// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:interview/feature/movies/bloc/movies_bloc.dart';
import 'package:interview/product/navigation/app_router.dart';
import 'package:interview/product/state/base/base_splash_state.dart';
import 'package:interview/product/state/container/product_state_items.dart';
import 'package:interview/product/utility/constants/product_constants.dart';
import 'package:interview/product/widget/movie_text_widget.dart';
import 'package:interview/product/widget/padding/app_padding.dart';
import 'package:interview/product/widget/poster_widget.dart';
import 'package:interview/product/widget/rating_widget.dart';
import 'package:kartal/kartal.dart';

part 'mixins/movies_view_mixin.dart';
part 'widget/movie_detail_widget.dart';

@RoutePage()
final class MoviesView extends StatefulWidget {
  const MoviesView({super.key});

  @override
  State<MoviesView> createState() => _MoviesViewState();
}

class _MoviesViewState extends BaseSplashState<MoviesView> with MoviesViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ProductConst.movies),
      ),
      body: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          if (state.movies == <Movie>[]) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }

          return Padding(
            padding: const AppPadding.extraSmall(),
            child: RefreshIndicator(
              onRefresh: () async => _refresh(),
              child: buildMovies(context, state),
            ),
          );
        },
      ),
    );
  }

  NotificationListener<ScrollNotification> buildMovies(BuildContext context, MoviesState state) {
    return NotificationListener<ScrollNotification>(
      onNotification: _onNotification,
      child: GridView.builder(
        controller: scrollController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: state.movies.length + 2,
        itemBuilder: (context, index) {
          if (index == state.movies.length || index == state.movies.length + 1) {
            return Transform.scale(
              scale: 0.2,
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(ColorName.rating),
              ),
            );
          }

          return MovieDetailWidget(
            movie: state.movies[index],
          );
        },
      ),
    );
  }
}
