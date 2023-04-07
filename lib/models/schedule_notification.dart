import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_notification.freezed.dart';
part 'schedule_notification.g.dart';

@freezed
class ScheduleNotification with _$ScheduleNotification {
  const factory ScheduleNotification({
    required int id,
    String? title,
    String? body,
    String? payload,
    required DateTime scheduledTime,
  }) = _ScheduleNotification;
  factory ScheduleNotification.fromJson(Map<String, dynamic> json) =>
      _$ScheduleNotificationFromJson(json);
}
