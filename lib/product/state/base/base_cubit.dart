// ignore_for_file: public_member_api_docs

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<S> extends Cubit<S> {
  BaseCubit(super.state);

  void safeEmit(S state) {
    if (isClosed) return;
    emit(state);
  }
}
