import 'package:plant_sensors/component/component.dart';

import '../../data.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  final StopwatchIsolate stopwatchIsolate;
  factory HomeLocalDataSourceImpl.create() => HomeLocalDataSourceImpl(
        stopwatchIsolate: getIt.get<StopwatchIsolate>(),
      );

  HomeLocalDataSourceImpl({required this.stopwatchIsolate});

  @override
  Future<Isolate> initIsolateStopwatch(StopwatchIsolateModel isolateModel,
      HandleIsolateMessage handleMessage) async {
    return await stopwatchIsolate.createIsolate(
      isolateModel,
      handleMessage,
    );
  }

  @override
  Future<void> closeIsolateStopwatch(Isolate isolate) async {
    return await stopwatchIsolate.close(isolate);
  }

  @override
  void startStopwatch(StopwatchIsolateModel stopwatchIsolateModel) {
    return stopwatchIsolate.start(stopwatchIsolateModel.isolatedSendPort);
  }

  @override
  void stopStopwatch(StopwatchIsolateModel stopwatchIsolateModel) {
    return stopwatchIsolate.stop(stopwatchIsolateModel.isolatedSendPort);
  }
}
