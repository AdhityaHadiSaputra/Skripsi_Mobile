// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleNotification _$ScheduleNotificationFromJson(Map<String, dynamic> json) {
  return _ScheduleNotification.fromJson(json);
}

/// @nodoc
mixin _$ScheduleNotification {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get payload => throw _privateConstructorUsedError;
  DateTime get scheduledTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleNotificationCopyWith<ScheduleNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleNotificationCopyWith<$Res> {
  factory $ScheduleNotificationCopyWith(ScheduleNotification value,
          $Res Function(ScheduleNotification) then) =
      _$ScheduleNotificationCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? title,
      String? body,
      String? payload,
      DateTime scheduledTime});
}

/// @nodoc
class _$ScheduleNotificationCopyWithImpl<$Res>
    implements $ScheduleNotificationCopyWith<$Res> {
  _$ScheduleNotificationCopyWithImpl(this._value, this._then);

  final ScheduleNotification _value;
  // ignore: unused_field
  final $Res Function(ScheduleNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? payload = freezed,
    Object? scheduledTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledTime: scheduledTime == freezed
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleNotificationCopyWith<$Res>
    implements $ScheduleNotificationCopyWith<$Res> {
  factory _$$_ScheduleNotificationCopyWith(_$_ScheduleNotification value,
          $Res Function(_$_ScheduleNotification) then) =
      __$$_ScheduleNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? title,
      String? body,
      String? payload,
      DateTime scheduledTime});
}

/// @nodoc
class __$$_ScheduleNotificationCopyWithImpl<$Res>
    extends _$ScheduleNotificationCopyWithImpl<$Res>
    implements _$$_ScheduleNotificationCopyWith<$Res> {
  __$$_ScheduleNotificationCopyWithImpl(_$_ScheduleNotification _value,
      $Res Function(_$_ScheduleNotification) _then)
      : super(_value, (v) => _then(v as _$_ScheduleNotification));

  @override
  _$_ScheduleNotification get _value => super._value as _$_ScheduleNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? payload = freezed,
    Object? scheduledTime = freezed,
  }) {
    return _then(_$_ScheduleNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledTime: scheduledTime == freezed
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleNotification implements _ScheduleNotification {
  const _$_ScheduleNotification(
      {required this.id,
      this.title,
      this.body,
      this.payload,
      required this.scheduledTime});

  factory _$_ScheduleNotification.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleNotificationFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? payload;
  @override
  final DateTime scheduledTime;

  @override
  String toString() {
    return 'ScheduleNotification(id: $id, title: $title, body: $body, payload: $payload, scheduledTime: $scheduledTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleNotification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality()
                .equals(other.scheduledTime, scheduledTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(scheduledTime));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleNotificationCopyWith<_$_ScheduleNotification> get copyWith =>
      __$$_ScheduleNotificationCopyWithImpl<_$_ScheduleNotification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleNotificationToJson(
      this,
    );
  }
}

abstract class _ScheduleNotification implements ScheduleNotification {
  const factory _ScheduleNotification(
      {required final int id,
      final String? title,
      final String? body,
      final String? payload,
      required final DateTime scheduledTime}) = _$_ScheduleNotification;

  factory _ScheduleNotification.fromJson(Map<String, dynamic> json) =
      _$_ScheduleNotification.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get payload;
  @override
  DateTime get scheduledTime;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleNotificationCopyWith<_$_ScheduleNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
