import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:interview/feature/movie/view/movie_view.dart';
import 'package:interview/feature/movies/view/movies_view.dart';

part 'app_router.gr.dart';

///App navigation router
@AutoRouterConfig(replaceInRouteName: AppRouter._replaceRouteName)
class AppRouter extends _$AppRouter {
  static const _replaceRouteName = 'View,Route';

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: MoviesRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          initial: true,
        ),
        CustomRoute(
          page: MovieRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
      ];
}
