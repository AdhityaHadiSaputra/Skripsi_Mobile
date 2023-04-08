import 'package:freezed_annotation/freezed_annotation.dart';

part 'plants.freezed.dart';
part 'plants.g.dart';

@freezed
class Plants with _$Plants {
  const factory Plants({
    bool? fan,
    bool? waterPump,
    bool? nutritionPump,
    double? moisturization,
    double? nutrition,
    double? temperature,
  }) = _Plants;

  factory Plants.fromJson(Map<String, dynamic> json) => _$PlantsFromJson(json);
}
