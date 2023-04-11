import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../../../component/injector.dart';
import '../../../component/keys.dart';
import '../../../models/models.dart';
import '../remote.dart';

class FirebaseMessagingServiceImpl extends FirebaseMessagingService {
  Dio client = getIt.get<BaseService>().dio;
  final BaseNotificationService _notificationService =
      getIt.get<BaseNotificationService>();

  static const int idMessage = 0;
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;

  @override
  Future<void> registerNotification() async {
    // For handling the received notifications
    _handlingWhenAppIsInForeground();
    await _handlingWhenAppTerminated();
    await _handlingWhenAppIsInBackground();
  }

  StreamSubscription<RemoteMessage> _handlingWhenAppIsInForeground() {
    return FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        // Parse the message received
        ReceivedNotification receivedNotification = ReceivedNotification(
          id: idMessage,
          title: message.notification?.title,
          body: message.notification?.body,
        );
        showNotification(receivedNotification);
      },
    );
  }

  // For handling notification when the app is in terminated state
  Future<void> _handlingWhenAppTerminated() async {
    RemoteMessage? initialMessage =
        await _firebaseMessaging.getInitialMessage();

    if (initialMessage != null) {
      ReceivedNotification receivedNotification = ReceivedNotification(
        id: idMessage,
        title: initialMessage.notification?.title,
        body: initialMessage.notification?.body,
      );
      showNotification(receivedNotification);
    }
  }

  // For handling notification when the app is in background
  // but not terminated
  Future<void> _handlingWhenAppIsInBackground() async {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      ReceivedNotification receivedNotification = ReceivedNotification(
        id: idMessage,
        title: message.notification?.title,
        body: message.notification?.body,
      );
      showNotification(receivedNotification);
    });
  }

  void showNotification(ReceivedNotification receivedNotification) {
    _notificationService.showNotification(
        receivedNotification: receivedNotification);
  }

  @override
  Future<String?> getToken() async {
    final String? fcmToken = await FirebaseMessaging.instance.getToken();
    return fcmToken;
  }

  @override
  Future<void> pushNotification(
      ReceivedNotification receivedNotification) async {
    final String? fcmToken = await getToken();
    var url = Keys.postPushNotifUrl;
    var request = {
      "notification": {
        "title": receivedNotification.title,
        "body": receivedNotification.body,
        "sound": "default",
        "color": "#990000",
      },
      "priority": "high",
      "to": fcmToken,
    };
    await client.post(url, data: json.encode(request));
  }
}
