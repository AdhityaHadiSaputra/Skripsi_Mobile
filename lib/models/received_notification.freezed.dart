// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'received_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceivedNotification _$ReceivedNotificationFromJson(Map<String, dynamic> json) {
  return _ReceivedNotification.fromJson(json);
}

/// @nodoc
mixin _$ReceivedNotification {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceivedNotificationCopyWith<ReceivedNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceivedNotificationCopyWith<$Res> {
  factory $ReceivedNotificationCopyWith(ReceivedNotification value,
          $Res Function(ReceivedNotification) then) =
      _$ReceivedNotificationCopyWithImpl<$Res>;
  $Res call({int id, String? title, String? body, String? payload});
}

/// @nodoc
class _$ReceivedNotificationCopyWithImpl<$Res>
    implements $ReceivedNotificationCopyWith<$Res> {
  _$ReceivedNotificationCopyWithImpl(this._value, this._then);

  final ReceivedNotification _value;
  // ignore: unused_field
  final $Res Function(ReceivedNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? payload = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_ReceivedNotificationCopyWith<$Res>
    implements $ReceivedNotificationCopyWith<$Res> {
  factory _$$_ReceivedNotificationCopyWith(_$_ReceivedNotification value,
          $Res Function(_$_ReceivedNotification) then) =
      __$$_ReceivedNotificationCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? title, String? body, String? payload});
}

/// @nodoc
class __$$_ReceivedNotificationCopyWithImpl<$Res>
    extends _$ReceivedNotificationCopyWithImpl<$Res>
    implements _$$_ReceivedNotificationCopyWith<$Res> {
  __$$_ReceivedNotificationCopyWithImpl(_$_ReceivedNotification _value,
      $Res Function(_$_ReceivedNotification) _then)
      : super(_value, (v) => _then(v as _$_ReceivedNotification));

  @override
  _$_ReceivedNotification get _value => super._value as _$_ReceivedNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_ReceivedNotification(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceivedNotification implements _ReceivedNotification {
  const _$_ReceivedNotification(
      {required this.id, this.title, this.body, this.payload});

  factory _$_ReceivedNotification.fromJson(Map<String, dynamic> json) =>
      _$$_ReceivedNotificationFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? payload;

  @override
  String toString() {
    return 'ReceivedNotification(id: $id, title: $title, body: $body, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceivedNotification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$_ReceivedNotificationCopyWith<_$_ReceivedNotification> get copyWith =>
      __$$_ReceivedNotificationCopyWithImpl<_$_ReceivedNotification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceivedNotificationToJson(
      this,
    );
  }
}

abstract class _ReceivedNotification implements ReceivedNotification {
  const factory _ReceivedNotification(
      {required final int id,
      final String? title,
      final String? body,
      final String? payload}) = _$_ReceivedNotification;

  factory _ReceivedNotification.fromJson(Map<String, dynamic> json) =
      _$_ReceivedNotification.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get payload;
  @override
  @JsonKey(ignore: true)
  _$$_ReceivedNotificationCopyWith<_$_ReceivedNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
