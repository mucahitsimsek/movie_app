// ignore_for_file: lines_longer_than_80_chars

part of '.././movies_view.dart';

/// Movies View Mixin
mixin MoviesViewMixin on State<MoviesView> {
  /// Scroll Controller
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _fetchMovies();
  }

  void _fetchMovies() {
    Future.microtask(
      () => context.read<MoviesBloc>().add(const FetchMoviesEvent()),
    );
  }

  void _refresh() {
    context.read<MoviesBloc>().add(const RefreshMovies());
  }

  /// On Notification
  bool _onNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification) {
      if (scrollController.position.extentAfter == 0) {
        context.read<MoviesBloc>().add(const FetchMoviesEvent());
      }
    }
    return false;
  }
}
