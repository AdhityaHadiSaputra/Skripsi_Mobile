// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleNotification _$$_ScheduleNotificationFromJson(
        Map<String, dynamic> json) =>
    _$_ScheduleNotification(
      id: json['id'] as int,
      title: json['title'] as String?,
      body: json['body'] as String?,
      payload: json['payload'] as String?,
      scheduledTime: DateTime.parse(json['scheduledTime'] as String),
    );

Map<String, dynamic> _$$_ScheduleNotificationToJson(
        _$_ScheduleNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'payload': instance.payload,
      'scheduledTime': instance.scheduledTime.toIso8601String(),
    };
