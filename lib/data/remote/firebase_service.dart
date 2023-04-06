// ignore_for_file: deprecated_member_use

import 'package:firebase_database/firebase_database.dart';

class FirebaseService {
  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.reference();

  Stream<DatabaseEvent> getData() {
    return _databaseReference.child('data').onValue;
  }

  Future<void> addData(String data) async {
    final newPostRef = _databaseReference.child('data').push();
    await newPostRef.set(data);
  }
}
