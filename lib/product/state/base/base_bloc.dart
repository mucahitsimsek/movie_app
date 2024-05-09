// ignore_for_file: public_member_api_docs, invalid_use_of_visible_for_testing_member, lines_longer_than_80_chars

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> {
  BaseBloc(super.initialState);

  void safeEmit(S state) {
    if (isClosed) return;
    emit(state);
  }
}
