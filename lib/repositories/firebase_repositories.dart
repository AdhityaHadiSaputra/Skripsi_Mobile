import 'package:dartz/dartz.dart';

import '../component/component.dart';
import '../data/remote/remote.dart';
import '../models/models.dart';

class FirebaseRepository {
  final FirebaseService _firebaseService;
  FirebaseRepository(this._firebaseService);

  factory FirebaseRepository.create() => FirebaseRepository(getIt.get());

  Future<Either<Exception, Stream<Plants>>> fetchData() async {
    try {
      final result = _firebaseService.getData();
      return Right(result);
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
