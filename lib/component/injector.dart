import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:timezone/data/latest.dart' as tz;

import '../data/remote/remote.dart';

final getIt = GetIt.instance;

class Injector {
  const Injector();

  static Future<void> create() async {
    const injector = Injector();
    injector.onStartRegister();
  }

  void onStartRegister() {
    _onRegisterService();
  }

  void _onRegisterService() {
    getIt.registerLazySingleton<BaseService>(() => BaseService.create());
    getIt.registerLazySingleton<FirebaseService>(() => FirebaseService());
    getIt.registerLazySingleton<FlutterLocalNotificationsPlugin>(
        () => FlutterLocalNotificationsPlugin());
    getIt.registerSingletonAsync<NotificationService>(() async {
      NotificationService notificationService = NotificationServiceImpl(
        getIt(),
      );
      tz.initializeTimeZones();
      await notificationService.initnotification();
      notificationService.requestPermission();
      return notificationService;
    });
  }
}
