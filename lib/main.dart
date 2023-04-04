import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'component/injector.dart';

void runMainApp() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      await Injector.create();
      runApp(App());
    },
    (error, stack) => debugPrint('error $error, $stack'),
  );
}
