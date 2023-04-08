// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'received_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceivedNotification _$$_ReceivedNotificationFromJson(
        Map<String, dynamic> json) =>
    _$_ReceivedNotification(
      id: json['id'] as int,
      title: json['title'] as String?,
      body: json['body'] as String?,
      payload: json['payload'] as String?,
    );

Map<String, dynamic> _$$_ReceivedNotificationToJson(
        _$_ReceivedNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'payload': instance.payload,
    };
