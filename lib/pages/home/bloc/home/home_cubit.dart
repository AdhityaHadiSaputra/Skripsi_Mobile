// ignore_for_file: unused_result

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../component/component.dart';
import '../../../../data/local/isolates/isolates.dart';
import '../../../../extensions/extension.dart';
import '../../../../models/models.dart';
import '../../../../repositories/repositories.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final FirebaseRepository _firebaseRepository;
  final HomeRepository _homeRepository;
  StopwatchIsolateModel fanStopwatch =
      StopwatchIsolateModel(isolateName: 'fanStopwatch');
  StopwatchIsolateModel nutritionPumpStopwatch =
      StopwatchIsolateModel(isolateName: 'nutritionPumpStopwatch');
  StopwatchIsolateModel waterPumpStopwatch =
      StopwatchIsolateModel(isolateName: 'waterPumpStopwatch');
  bool isInitialized = false;
  Plants latestPlants = const Plants();
  HomeCubit(this._firebaseRepository, this._homeRepository)
      : super(const HomeState.initial());

  factory HomeCubit.create() => HomeCubit(
        getIt.get(),
        getIt.get(),
      )..initialization();

  void initialization() async {
    emit(const HomeState.loading());
    await initIsolateStopwatch();
    final result = await _firebaseRepository.fetchData();
    result.fold(
      (e) => emit(HomeState.error(e)),
      (r) => r.listen((event) async {
        if (!isInitialized) {
          _emitSuccess(event);
          isInitialized = true;
          return;
        }

        await _handleFanDataToPushNotification(event);
        await _handleWaterPumpDataToPushNotification(event);
        await _handleNutritionDataToPushNotification(event);
      }),
    );
  }

  Future<void> _handleFanDataToPushNotification(Plants event) async {
    if (event.fan.isNull) return;
    // if (event.fan == latestPlants.fan) return;
    if (event.fan ?? false) {
      _homeRepository.startStopwatch(fanStopwatch);
    } else {
      _homeRepository.stopStopwatch(fanStopwatch);
    }

    await _checkCondition(
      currentCondition: event.fan ?? false,
      latestCondition: latestPlants.fan ?? false,
      title: 'Fan',
      text: 'Current temperature is ${event.fan ?? false ? "LOW" : "HIGH"}',
    );
    copyWithLatestPlants(
      latestPlants.copyWith(
        fan: event.fan,
        temperature: event.temperature,
      ),
    );
  }

  Future<void> _handleWaterPumpDataToPushNotification(Plants event) async {
    if (event.waterPump.isNull) return;
    // if (event.waterPump == latestPlants.waterPump) return;
    if (event.waterPump ?? false) {
      _homeRepository.startStopwatch(waterPumpStopwatch);
    } else {
      _homeRepository.stopStopwatch(waterPumpStopwatch);
    }

    await _checkCondition(
      currentCondition: event.waterPump ?? false,
      latestCondition: latestPlants.waterPump ?? false,
      title: 'Water Pump',
      text: 'Current Moisture is ${event.waterPump ?? false ? "HIGH" : "LOW"}',
    );
    copyWithLatestPlants(
      latestPlants.copyWith(
        waterPump: event.waterPump,
        moisturization: event.moisturization,
      ),
    );
  }

  Future<void> _handleNutritionDataToPushNotification(Plants event) async {
    if (event.nutritionPump.isNull) return;
    // if (event.nutritionPump == latestPlants.nutritionPump) return;
    if (event.nutritionPump ?? false) {
      _homeRepository.startStopwatch(nutritionPumpStopwatch);
    } else {
      _homeRepository.stopStopwatch(nutritionPumpStopwatch);
    }
    await _checkCondition(
      currentCondition: event.nutritionPump ?? false,
      latestCondition: latestPlants.nutritionPump ?? false,
      title: 'Nutrition Pump',
      text:
          'Current Nutrition is ${event.nutritionPump ?? false ? "HIGH" : "LOW"}',
    );
    copyWithLatestPlants(
      latestPlants.copyWith(
        nutrition: event.nutrition,
        nutritionPump: event.nutritionPump,
      ),
    );
  }

  Future<void> _checkCondition({
    required bool currentCondition,
    required bool latestCondition,
    required String title,
    required String text,
  }) async {
    if (currentCondition == latestCondition) return;

    return _homeRepository.pushNotification(
      latestCondition: latestCondition,
      title: title,
    );
  }

  Future<void> initIsolateStopwatch() async {
    fanStopwatch.isolate = await _homeRepository.initIsolateStopwatch(
      fanStopwatch,
      _fanIsolateHandleMessage,
    );
    nutritionPumpStopwatch.isolate = await _homeRepository.initIsolateStopwatch(
      nutritionPumpStopwatch,
      _nutritionPumpIsolateHandleMessage,
    );
    waterPumpStopwatch.isolate = await _homeRepository.initIsolateStopwatch(
      waterPumpStopwatch,
      _waterPumpIsolateHandleMessage,
    );
  }

  Future<void> closeIsolateStopwatch() async {
    _homeRepository.closeIsolateStopwatch(fanStopwatch.isolate);
    _homeRepository.closeIsolateStopwatch(nutritionPumpStopwatch.isolate);
    _homeRepository.closeIsolateStopwatch(waterPumpStopwatch.isolate);
  }

  _waterPumpIsolateHandleMessage(dynamic message) {
    debugPrint('waterpump handleMessage $message');
    if (message is SendPort) {
      waterPumpStopwatch.isolatedSendPort = message;
    }
    if (message is! int) return;
    if (message == 0) return;
    copyWithLatestPlants(
      latestPlants.copyWith(waterPumpDuration: message),
    );
    return;
  }

  _nutritionPumpIsolateHandleMessage(message) {
    debugPrint('nutrition handleMessage $message');
    if (message is SendPort) {
      nutritionPumpStopwatch.isolatedSendPort = message;
    }
    if (message is! int) return;
    if (message == 0) return;
    copyWithLatestPlants(
      latestPlants.copyWith(nutritionPumpDuration: message),
    );
    return;
  }

  _fanIsolateHandleMessage(message) {
    debugPrint('fan handleMessage $message');
    if (message is SendPort) {
      fanStopwatch.isolatedSendPort = message;
    }
    if (message is! int) return;
    if (message == 0) return;
    copyWithLatestPlants(
      latestPlants.copyWith(fanDuration: message),
    );
    return;
  }

  void _emitSuccess(Plants plants) {
    debugPrint('latest data ${plants.toJson()}');
    emit(HomeState.success(plants));
  }

  void copyWithLatestPlants(Plants plants) {
    latestPlants = latestPlants.copyWith(
      fan: plants.fan,
      fanDuration: plants.fanDuration,
      moisturization: plants.moisturization,
      nutrition: plants.nutrition,
      nutritionPump: plants.nutritionPump,
      nutritionPumpDuration: plants.nutritionPumpDuration,
      temperature: plants.temperature,
      waterPump: plants.waterPump,
      waterPumpDuration: plants.waterPumpDuration,
    );
    _emitSuccess(latestPlants);
  }

  @override
  Future<void> close() {
    closeIsolateStopwatch();
    return super.close();
  }
}
