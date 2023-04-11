import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../component/component.dart';
import '../../../../data/remote/remote.dart';
import '../../../../models/models.dart';
import '../../../../repositories/firebase_repositories.dart';
import '../../../../extensions/extension.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final FirebaseRepository _firebaseRepository;
  bool isInitialized = false;
  Plants latestPlants = const Plants();
  HomeCubit(this._firebaseRepository) : super(const HomeState.initial());

  factory HomeCubit.create() => HomeCubit(getIt.get())..initialization();

  void initialization() async {
    emit(const HomeState.loading());
    final result = await _firebaseRepository.fetchData();
    result.fold(
      (e) => emit(HomeState.error(e)),
      (r) => r.listen((event) async {
        if (isInitialized) {
          await _handleDataToPushNotification(event);
          latestPlants = event;
        }
        emit(HomeState.success(event));
        isInitialized = true;
      }),
    );
  }

  Future<void> _handleDataToPushNotification(Plants event) async {
    if (event.fan.isNotNull) {
      _checkCondition(
        currentCondition: event.fan ?? false,
        latestCondition: latestPlants.fan ?? false,
        title: 'Fan',
        text: 'Current temperature is ${event.fan ?? false ? "LOW" : "HIGH"}',
      );
    }

    if (event.waterPump.isNotNull) {
      _checkCondition(
        currentCondition: event.waterPump ?? false,
        latestCondition: latestPlants.waterPump ?? false,
        title: 'Water Pump',
        text:
            'Current Moisture is ${event.waterPump ?? false ? "HIGH" : "LOW"}',
      );
    }

    if (event.nutritionPump.isNotNull) {
      _checkCondition(
        currentCondition: event.nutritionPump ?? false,
        latestCondition: latestPlants.nutritionPump ?? false,
        title: 'Nutrition Pump',
        text:
            'Current Nutrition is ${event.nutritionPump ?? false ? "HIGH" : "LOW"}',
      );
    }
  }

  Future<void> _checkCondition({
    required bool currentCondition,
    required bool latestCondition,
    required String title,
    required String text,
  }) async {
    ReceivedNotification receivedNotification = const ReceivedNotification(
      id: 0,
      title: '',
      body: '',
    );
    if (currentCondition == latestCondition) return;
    receivedNotification = receivedNotification.copyWith(
      title: '$title ${latestCondition ? "OFF" : "ON"}',
      body: '',
    );
    await pushNotification(receivedNotification);
  }

  Future<void> pushNotification(
      ReceivedNotification receivedNotification) async {
    FirebaseMessagingService service = getIt.get<FirebaseMessagingService>();
    await service.pushNotification(receivedNotification);
  }
}
