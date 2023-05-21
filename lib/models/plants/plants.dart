// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'plants.freezed.dart';
part 'plants.g.dart';

@freezed
class Plants with _$Plants {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Plants({
    bool? fan,
    bool? waterPump,
    bool? nutritionPump,
    double? moisturization,
    double? nutrition,
    double? temperature,
    @Default(0) int? fanDuration,
    @Default(0) int? waterPumpDuration,
    @Default(0) int? nutritionPumpDuration,
  }) = _Plants;

  factory Plants.fromJson(Map<String, dynamic> json) => _$PlantsFromJson(json);
}
