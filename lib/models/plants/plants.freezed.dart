// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'plants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Plants _$PlantsFromJson(Map<String, dynamic> json) {
  return _Plants.fromJson(json);
}

/// @nodoc
mixin _$Plants {
  bool? get fan => throw _privateConstructorUsedError;
  bool? get waterPump => throw _privateConstructorUsedError;
  bool? get nutritionPump => throw _privateConstructorUsedError;
  double? get moisturization => throw _privateConstructorUsedError;
  double? get nutrition => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlantsCopyWith<Plants> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsCopyWith<$Res> {
  factory $PlantsCopyWith(Plants value, $Res Function(Plants) then) =
      _$PlantsCopyWithImpl<$Res>;
  $Res call(
      {bool? fan,
      bool? waterPump,
      bool? nutritionPump,
      double? moisturization,
      double? nutrition,
      double? temperature});
}

/// @nodoc
class _$PlantsCopyWithImpl<$Res> implements $PlantsCopyWith<$Res> {
  _$PlantsCopyWithImpl(this._value, this._then);

  final Plants _value;
  // ignore: unused_field
  final $Res Function(Plants) _then;

  @override
  $Res call({
    Object? fan = freezed,
    Object? waterPump = freezed,
    Object? nutritionPump = freezed,
    Object? moisturization = freezed,
    Object? nutrition = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_value.copyWith(
      fan: fan == freezed
          ? _value.fan
          : fan // ignore: cast_nullable_to_non_nullable
              as bool?,
      waterPump: waterPump == freezed
          ? _value.waterPump
          : waterPump // ignore: cast_nullable_to_non_nullable
              as bool?,
      nutritionPump: nutritionPump == freezed
          ? _value.nutritionPump
          : nutritionPump // ignore: cast_nullable_to_non_nullable
              as bool?,
      moisturization: moisturization == freezed
          ? _value.moisturization
          : moisturization // ignore: cast_nullable_to_non_nullable
              as double?,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as double?,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlantsCopyWith<$Res> implements $PlantsCopyWith<$Res> {
  factory _$$_PlantsCopyWith(_$_Plants value, $Res Function(_$_Plants) then) =
      __$$_PlantsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? fan,
      bool? waterPump,
      bool? nutritionPump,
      double? moisturization,
      double? nutrition,
      double? temperature});
}

/// @nodoc
class __$$_PlantsCopyWithImpl<$Res> extends _$PlantsCopyWithImpl<$Res>
    implements _$$_PlantsCopyWith<$Res> {
  __$$_PlantsCopyWithImpl(_$_Plants _value, $Res Function(_$_Plants) _then)
      : super(_value, (v) => _then(v as _$_Plants));

  @override
  _$_Plants get _value => super._value as _$_Plants;

  @override
  $Res call({
    Object? fan = freezed,
    Object? waterPump = freezed,
    Object? nutritionPump = freezed,
    Object? moisturization = freezed,
    Object? nutrition = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_$_Plants(
      fan: fan == freezed
          ? _value.fan
          : fan // ignore: cast_nullable_to_non_nullable
              as bool?,
      waterPump: waterPump == freezed
          ? _value.waterPump
          : waterPump // ignore: cast_nullable_to_non_nullable
              as bool?,
      nutritionPump: nutritionPump == freezed
          ? _value.nutritionPump
          : nutritionPump // ignore: cast_nullable_to_non_nullable
              as bool?,
      moisturization: moisturization == freezed
          ? _value.moisturization
          : moisturization // ignore: cast_nullable_to_non_nullable
              as double?,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as double?,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Plants implements _Plants {
  const _$_Plants(
      {this.fan,
      this.waterPump,
      this.nutritionPump,
      this.moisturization,
      this.nutrition,
      this.temperature});

  factory _$_Plants.fromJson(Map<String, dynamic> json) =>
      _$$_PlantsFromJson(json);

  @override
  final bool? fan;
  @override
  final bool? waterPump;
  @override
  final bool? nutritionPump;
  @override
  final double? moisturization;
  @override
  final double? nutrition;
  @override
  final double? temperature;

  @override
  String toString() {
    return 'Plants(fan: $fan, waterPump: $waterPump, nutritionPump: $nutritionPump, moisturization: $moisturization, nutrition: $nutrition, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Plants &&
            const DeepCollectionEquality().equals(other.fan, fan) &&
            const DeepCollectionEquality().equals(other.waterPump, waterPump) &&
            const DeepCollectionEquality()
                .equals(other.nutritionPump, nutritionPump) &&
            const DeepCollectionEquality()
                .equals(other.moisturization, moisturization) &&
            const DeepCollectionEquality().equals(other.nutrition, nutrition) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fan),
      const DeepCollectionEquality().hash(waterPump),
      const DeepCollectionEquality().hash(nutritionPump),
      const DeepCollectionEquality().hash(moisturization),
      const DeepCollectionEquality().hash(nutrition),
      const DeepCollectionEquality().hash(temperature));

  @JsonKey(ignore: true)
  @override
  _$$_PlantsCopyWith<_$_Plants> get copyWith =>
      __$$_PlantsCopyWithImpl<_$_Plants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlantsToJson(
      this,
    );
  }
}

abstract class _Plants implements Plants {
  const factory _Plants(
      {final bool? fan,
      final bool? waterPump,
      final bool? nutritionPump,
      final double? moisturization,
      final double? nutrition,
      final double? temperature}) = _$_Plants;

  factory _Plants.fromJson(Map<String, dynamic> json) = _$_Plants.fromJson;

  @override
  bool? get fan;
  @override
  bool? get waterPump;
  @override
  bool? get nutritionPump;
  @override
  double? get moisturization;
  @override
  double? get nutrition;
  @override
  double? get temperature;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsCopyWith<_$_Plants> get copyWith =>
      throw _privateConstructorUsedError;
}
