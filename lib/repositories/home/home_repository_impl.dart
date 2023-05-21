import 'package:plant_sensors/component/component.dart';

import '../../data/data.dart';
import '../repositories.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;
  factory HomeRepositoryImpl.create() => HomeRepositoryImpl(
        localDataSource: getIt.get<HomeLocalDataSource>(),
        remoteDataSource: getIt.get<HomeRemoteDataSource>(),
      );

  HomeRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<void> pushNotification({
    required bool latestCondition,
    required String title,
  }) async {
    return await remoteDataSource.pushNotification(
      latestCondition: latestCondition,
      title: title,
    );
  }

  @override
  Future<Isolate> initIsolateStopwatch(
    StopwatchIsolateModel isolateModel,
    HandleIsolateMessage handleMessage,
  ) async {
    return await localDataSource.initIsolateStopwatch(
      isolateModel,
      handleMessage,
    );
  }

  @override
  Future<void> closeIsolateStopwatch(Isolate isolate) async {
    return await localDataSource.closeIsolateStopwatch(isolate);
  }

  @override
  void startStopwatch(StopwatchIsolateModel stopwatchIsolateModel) {
    return localDataSource.startStopwatch(stopwatchIsolateModel);
  }

  @override
  void stopStopwatch(StopwatchIsolateModel stopwatchIsolateModel) {
    return localDataSource.stopStopwatch(stopwatchIsolateModel);
  }
}
