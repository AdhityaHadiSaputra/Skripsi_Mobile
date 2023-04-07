import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'app.dart';
import 'component/injector.dart';

void runMainApp() async {
  runZonedGuarded<Future<void>>(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await Firebase.initializeApp();
      await Injector.create();
      FlutterNativeSplash.remove();
      runApp(App());
    },
    (error, stack) => debugPrint('error $error, $stack'),
  );
}
