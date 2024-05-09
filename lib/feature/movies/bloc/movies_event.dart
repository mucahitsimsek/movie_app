// ignore_for_file: public_member_api_docs

part of 'movies_bloc.dart';

sealed class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

class FetchMoviesEvent extends MoviesEvent {
  const FetchMoviesEvent();
}

class RefreshMovies extends MoviesEvent {
  const RefreshMovies();
}
