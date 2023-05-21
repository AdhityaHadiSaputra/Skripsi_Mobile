// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Plants _$$_PlantsFromJson(Map<String, dynamic> json) => _$_Plants(
      fan: json['fan'] as bool?,
      waterPump: json['water_pump'] as bool?,
      nutritionPump: json['nutrition_pump'] as bool?,
      moisturization: (json['moisturization'] as num?)?.toDouble(),
      nutrition: (json['nutrition'] as num?)?.toDouble(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      fanDuration: json['fan_duration'] as int? ?? 0,
      waterPumpDuration: json['water_pump_duration'] as int? ?? 0,
      nutritionPumpDuration: json['nutrition_pump_duration'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PlantsToJson(_$_Plants instance) => <String, dynamic>{
      'fan': instance.fan,
      'water_pump': instance.waterPump,
      'nutrition_pump': instance.nutritionPump,
      'moisturization': instance.moisturization,
      'nutrition': instance.nutrition,
      'temperature': instance.temperature,
      'fan_duration': instance.fanDuration,
      'water_pump_duration': instance.waterPumpDuration,
      'nutrition_pump_duration': instance.nutritionPumpDuration,
    };
