// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MovieRoute.name: (routeData) {
      final args = routeData.argsAs<MovieRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieView(
          movie: args.movie,
          key: args.key,
        ),
      );
    },
    MoviesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MoviesView(),
      );
    },
  };
}

/// generated route for
/// [MovieView]
class MovieRoute extends PageRouteInfo<MovieRouteArgs> {
  MovieRoute({
    required Movie movie,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MovieRoute.name,
          args: MovieRouteArgs(
            movie: movie,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieRoute';

  static const PageInfo<MovieRouteArgs> page = PageInfo<MovieRouteArgs>(name);
}

class MovieRouteArgs {
  const MovieRouteArgs({
    required this.movie,
    this.key,
  });

  final Movie movie;

  final Key? key;

  @override
  String toString() {
    return 'MovieRouteArgs{movie: $movie, key: $key}';
  }
}

/// generated route for
/// [MoviesView]
class MoviesRoute extends PageRouteInfo<void> {
  const MoviesRoute({List<PageRouteInfo>? children})
      : super(
          MoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoviesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
