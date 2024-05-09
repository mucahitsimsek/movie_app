// ignore_for_file: public_member_api_docs

part of 'movies_bloc.dart';

final class MoviesState extends Equatable {
  const MoviesState({
    this.isLoading = false,
    this.movies = const [],
    this.currentPage = 1,
  });

  final bool isLoading;
  final List<Movie> movies;
  final int currentPage;

  @override
  List<Object> get props => [
        isLoading,
        movies,
        currentPage,
      ];

  MoviesState copyWith({
    bool? isLoading,
    List<Movie>? movies,
    int? currentPage,
  }) {
    return MoviesState(
      isLoading: isLoading ?? this.isLoading,
      movies: movies ?? this.movies,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}
