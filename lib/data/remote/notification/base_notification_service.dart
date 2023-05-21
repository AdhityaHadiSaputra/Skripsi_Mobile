import '../../../models/models.dart';

abstract class BaseNotificationService {
  Future<void> initnotification();
  Future<void> requestPermission();

  /// How to use show notification
  /// ``` dart
  /// NotificationService service = getIt.get<NotificationService>();
  /// const ReceivedNotification receivedNotification =
  /// ReceivedNotification(
  ///   id: 0,
  ///   title: 'ini titlenyaa',
  ///   body: 'ini bodynya',
  ///   payload: 'ini payloadnya',
  /// );
  /// service.showNotification(
  ///     receivedNotification: receivedNotification);
  /// ```
  Future<void> showNotification({
    required ReceivedNotification receivedNotification,
  });

  /// [How to use schedule notification]
  ///
  /// ``` dart
  /// NotificationService service = getIt.get<NotificationService>();
  /// ScheduleNotification scheduleNotification =
  /// ScheduleNotification(
  ///   id: 0,
  ///   title: 'ini titlenyaa',
  ///   body: 'ini bodynya',
  ///   payload: 'ini payloadnya',
  ///   scheduledTime: DateTime.now().add(const Duration(minutes: 1)),
  /// );
  /// service.scheduleNotification(
  ///     scheduleNotification: scheduleNotification);
  /// ```
  Future<void> scheduleNotification({
    required ScheduleNotification scheduleNotification,
  });
}
