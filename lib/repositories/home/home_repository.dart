import '../../data/local/isolates/isolates.dart';

abstract class HomeRepository {
  Future<void> pushNotification({
    required bool latestCondition,
    required String title,
  });
  Future<Isolate> initIsolateStopwatch(
    StopwatchIsolateModel isolateModel,
    HandleIsolateMessage handleMessage,
  );
  Future<void> closeIsolateStopwatch(Isolate isolate);
  void startStopwatch(StopwatchIsolateModel stopwatchIsolateModel);
  void stopStopwatch(StopwatchIsolateModel stopwatchIsolateModel);
}
