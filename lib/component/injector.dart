import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:timezone/data/latest.dart' as tz;

import '../data/data.dart';
import '../repositories/repositories.dart';

final getIt = GetIt.instance;

class Injector {
  const Injector();

  static Future<void> create() async {
    const injector = Injector();
    injector.onStartRegister();
  }

  void onStartRegister() {
    _onRegisterService();
    _onRegisterRepository();
    _onRegisterPlugin();
    _onRegisterDatasource();
  }

  void _onRegisterService() {
    getIt.registerLazySingleton<BaseService>(() => BaseService.create());
    getIt.registerLazySingleton<RealTimeFirebaseService>(
      () => RealTimeFirebaseService(),
    );
    getIt.registerSingletonAsync<BaseNotificationService>(() async {
      BaseNotificationService notificationService =
          NotificationServiceImpl(getIt());
      await notificationService.initnotification();
      notificationService.requestPermission();
      return notificationService;
    });
    getIt.registerSingletonAsync<FirebaseMessagingService>(
      () async {
        FirebaseMessagingServiceImpl firebaseMessagingServiceImpl =
            FirebaseMessagingServiceImpl();
        await firebaseMessagingServiceImpl.registerNotification();
        return firebaseMessagingServiceImpl;
      },
      dependsOn: [BaseNotificationService],
    );
  }

  void _onRegisterRepository() {
    getIt.registerLazySingleton<FirebaseRepository>(
      () => FirebaseRepository.create(),
    );
    getIt.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl.create(),
    );
  }

  void _onRegisterDatasource() {
    getIt.registerLazySingleton<HomeLocalDataSource>(
      () => HomeLocalDataSourceImpl.create(),
    );
    getIt.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl.create(),
    );
  }

  void _onRegisterPlugin() {
    getIt.registerLazySingleton<FlutterLocalNotificationsPlugin>(
      () => FlutterLocalNotificationsPlugin(),
    );
    tz.initializeTimeZones();
    getIt.registerLazySingleton<StopwatchIsolate>(
      () => StopwatchIsolateImpl(),
    );
  }
}
