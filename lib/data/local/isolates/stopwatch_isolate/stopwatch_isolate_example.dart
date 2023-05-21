import 'dart:async';

import 'package:flutter/material.dart';

import '../isolates.dart';

void main(List<String> args) async {
  StopwatchIsolate stopwatchIsolate = StopwatchIsolateImpl();
  StopwatchIsolateModel stopwatchIsolateModel = StopwatchIsolateModel(isolateName: 'stopwatch');
  StopwatchIsolateModel stopwatchIsolateModel2 = StopwatchIsolateModel(isolateName: 'stopwatch2');
  stopwatchIsolateModel.isolate =
      await initStopwatchIsolate(stopwatchIsolateModel, stopwatchIsolate);
  stopwatchIsolateModel2.isolate =
      await initStopwatchIsolate(stopwatchIsolateModel2, stopwatchIsolate);
}

void stop(
  StopwatchIsolate stopwatchIsolate,
  StopwatchIsolateModel stopwatchIsolateModel,
) {
  stopwatchIsolate.stop(stopwatchIsolateModel.isolatedSendPort);
}

void start(
  StopwatchIsolate stopwatchIsolate,
  StopwatchIsolateModel stopwatchIsolateModel,
) {
  stopwatchIsolate.start(stopwatchIsolateModel.isolatedSendPort);
}

void close(
  StopwatchIsolate stopwatchIsolate,
  StopwatchIsolateModel stopwatchIsolateModel,
) {
  stopwatchIsolate.close(stopwatchIsolateModel.isolate);
}

void extractData(dynamic message) {
  if (message is! int) {
    return;
  }
  debugPrint("$message");
}

Future<Isolate> initStopwatchIsolate(
  StopwatchIsolateModel stopwatchIsolateModel,
  StopwatchIsolate stopwatchIsolate,
) async {
  return await stopwatchIsolate.createIsolate(stopwatchIsolateModel, (message) {
    debugPrint('mainPort message $message');
    if (message is SendPort) {
      stopwatchIsolateModel.isolatedSendPort = message;
      return;
    }
    extractData(message);
  });
}
