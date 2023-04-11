import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:plant_sensors/extensions/extension.dart';
import 'package:timezone/timezone.dart';

import '../../../models/models.dart';
import 'base_notification_service.dart';

class NotificationServiceImpl extends BaseNotificationService {
  static const _channelId = "01";
  static const _channelName = "channel_01";
  static const _channelDesc = "plant sensor channel";
  static final Location location = getLocation('Asia/Jakarta');

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  NotificationServiceImpl(this.flutterLocalNotificationsPlugin);

  @override
  Future<void> initnotification() async {
    //init settings for android
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('main_logo');
    //init settings for ios
    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );
    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS);

    //initialize the notification
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse);
  }

  static void _onDidReceiveNotificationResponse(
      NotificationResponse details) async {
    String? payload = details.payload;
    if (payload != null) {
      // print('notification payload: $payload');
    }
  }

  @override
  Future<void> requestPermission() async {
    if (Platform.isIOS) {
      await requestIOSPermission();
      return;
    }
    await requestAndroidPermission();
  }

  Future<void> requestAndroidPermission() async {
    final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
        flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    await androidImplementation?.requestPermission();
    return;
  }

  Future<void> requestIOSPermission() async {
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  @override
  Future<void> showNotification(
      {required ReceivedNotification receivedNotification}) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        const AndroidNotificationDetails(
      _channelId,
      _channelName,
      channelDescription: _channelDesc,
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );

    DarwinNotificationDetails iOSPlatformChannelSpecifics =
        const DarwinNotificationDetails();

    NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
      receivedNotification.id,
      receivedNotification.title,
      receivedNotification.body,
      platformChannelSpecifics,
      payload: receivedNotification.payload,
    );
  }

  @override
  Future<void> scheduleNotification(
      {required ScheduleNotification scheduleNotification}) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        const AndroidNotificationDetails(
      _channelId,
      _channelName,
      channelDescription: _channelDesc,
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );

    DarwinNotificationDetails iOSPlatformChannelSpecifics =
        const DarwinNotificationDetails();

    NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    TZDateTime convertedTimeZone =
        TZDateTime.from(scheduleNotification.scheduledTime, location);

    await flutterLocalNotificationsPlugin.zonedSchedule(
      scheduleNotification.id,
      scheduleNotification.title,
      scheduleNotification.body,
      convertedTimeZone,
      platformChannelSpecifics,
      // Type of time interpretation
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle:
          true, // To show notification even when the app is closed
    );
    debugPrint(
      "Scheduled Notification Success, notification will show on ${scheduleNotification.scheduledTime.dayMonthYearHourMinuteDate()}",
    );
  }
}
