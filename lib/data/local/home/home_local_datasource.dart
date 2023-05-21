import '../../data.dart';

abstract class HomeLocalDataSource {
  Future<Isolate> initIsolateStopwatch(
    StopwatchIsolateModel isolateModel,
    HandleIsolateMessage handleMessage,
  );
  Future<void> closeIsolateStopwatch(Isolate isolate);
  void startStopwatch(StopwatchIsolateModel stopwatchIsolateModel);
  void stopStopwatch(StopwatchIsolateModel stopwatchIsolateModel);
}
