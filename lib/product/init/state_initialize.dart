// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/feature/movies/bloc/movies_bloc.dart';

class StateInitialize extends StatelessWidget {
  const StateInitialize({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MoviesBloc>(
          create: (_) => MoviesBloc(),
        ),
      ],
      child: child,
    );
  }
}
