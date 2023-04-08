// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

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
      scheduledTime: DateTime.parse(json['scheduled_time'] as String),
    );

Map<String, dynamic> _$$_ScheduleNotificationToJson(
        _$_ScheduleNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'payload': instance.payload,
      'scheduled_time': instance.scheduledTime.toIso8601String(),
    };
