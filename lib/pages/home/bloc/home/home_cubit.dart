import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../component/component.dart';
import '../../../../models/models.dart';
import '../../../../repositories/firebase_repositories.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final FirebaseRepository _firebaseRepository;

  HomeCubit(this._firebaseRepository) : super(const HomeState.initial());

  factory HomeCubit.create() => HomeCubit(getIt.get())..initialization();

  void initialization() async {
    emit(const HomeState.loading());
    final result = await _firebaseRepository.fetchData();
    result.fold(
      (e) => emit(HomeState.error(e)),
      (r) => r.listen((event) => emit(HomeState.success(event))),
    );
  }
}
