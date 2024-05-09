// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';
import 'package:interview/product/service/movies_service.dart';
import 'package:interview/product/state/base/base_bloc.dart';
import 'package:interview/product/state/container/product_state_items.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends BaseBloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(const MoviesState()) {
    on<FetchMoviesEvent>((event, emit) => fetchMovies());
    on<RefreshMovies>((event, emit) => fetchMovies(initial: true));
  }

  final _service = MoviesService(
    productNetworkManager: ProductStateItems.productNetworkManager,
  );

  Future<void> fetchMovies({bool? initial}) async {
    if (initial != null && initial) {
      safeEmit(
        state.copyWith(
          movies: [],
          currentPage: 1,
        ),
      );
    }
    safeEmit(state.copyWith(isLoading: true));
    final response = await _service.fetchMovies(
      page: state.currentPage,
    );

    if (response != null) {
      safeEmit(
        state.copyWith(
          movies: [
            ...state.movies,
            ...response.results!,
          ],
          currentPage: state.currentPage + 1,
        ),
      );
    }
    safeEmit(state.copyWith(isLoading: false));
  }
}
