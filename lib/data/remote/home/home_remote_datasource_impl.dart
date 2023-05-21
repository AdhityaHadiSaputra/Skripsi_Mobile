import 'package:plant_sensors/component/component.dart';

import '../../../models/models.dart';
import '../../data.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final FirebaseMessagingService fcmService;
  factory HomeRemoteDataSourceImpl.create() => HomeRemoteDataSourceImpl(
        fcmService: getIt.get<FirebaseMessagingService>(),
      );

  HomeRemoteDataSourceImpl({required this.fcmService});
  @override
  Future<void> pushNotification({
    required bool latestCondition,
    required String title,
  }) async {
    ReceivedNotification receivedNotification = const ReceivedNotification(
      id: 0,
      title: '',
      body: '',
    );
    receivedNotification = receivedNotification.copyWith(
      title: '$title ${latestCondition ? "OFF" : "ON"}',
      body: '',
    );
    await fcmService.pushNotification(receivedNotification);
  }
}
