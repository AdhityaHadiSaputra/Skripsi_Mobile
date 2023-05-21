// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:firebase_database/firebase_database.dart';

import '../../models/models.dart';

class RealTimeFirebaseService {
  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.reference();

  final completer = Completer<Plants>();

  Stream<Plants> getData() {
    final transformer = StreamTransformer<DatabaseEvent, Plants>.fromHandlers(
      handleData: (event, sink) {
        final dataSnapshot = event.snapshot.value as Map;
        final plants = Plants.fromJson(dataSnapshot.cast<String, dynamic>());
        sink.add(plants);
      },
    );

    return _databaseReference.child('test').onValue.transform(transformer);
  }
}
