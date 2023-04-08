import 'package:freezed_annotation/freezed_annotation.dart';
part 'received_notification.freezed.dart';
part 'received_notification.g.dart';

@freezed
class ReceivedNotification with _$ReceivedNotification {
  const factory ReceivedNotification({
    required int id,
    String? title,
    String? body,
    String? payload,
  }) = _ReceivedNotification;

  factory ReceivedNotification.fromJson(Map<String, dynamic> json) =>
      _$ReceivedNotificationFromJson(json);
}
