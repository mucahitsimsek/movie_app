// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:interview/product/utility/constants/product_constants.dart';
import 'package:interview/product/utility/extensions/string_ext.dart';
import 'package:interview/product/widget/gap/app_gap.dart';
import 'package:interview/product/widget/movie_text_widget.dart';
import 'package:interview/product/widget/poster_widget.dart';
import 'package:interview/product/widget/rating_widget.dart';
import 'package:kartal/kartal.dart';

@RoutePage()
class MovieView extends StatelessWidget {
  const MovieView({
    required this.movie,
    super.key,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ProductConst.detail),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerBuild(context),
            informationBuild(context),
          ],
        ),
      ),
    );
  }

  Padding informationBuild(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movie.overview == '' || movie.overview == null
                ? ProductConst.noContent
                : movie.overview!,
            style: context.general.textTheme.bodyLarge,
          ),
          const AppGap.small(),
          const Divider(),
          Text(
            movie.releaseDate ?? '',
            style: context.general.textTheme.bodyLarge,
          ),
          const AppGap.small(),
        ],
      ),
    );
  }

  SizedBox headerBuild(BuildContext context) {
    return SizedBox(
      height: context.sized.height * 0.4,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: context.border.normalBorderRadius,
            child: movie.backdropPath!.asNetworkImage.copyWith(
              size: Size(
                context.sized.width,
                context.sized.height * 0.3,
              ),
              child: Positioned(
                bottom: context.sized.height * 0.02,
                right: context.sized.width * 0.02,
                child: Container(
                  padding: context.padding.low,
                  decoration: BoxDecoration(
                    color: ColorName.background,
                    borderRadius: context.border.normalBorderRadius,
                  ),
                  child: RatingWidget(
                    rating: movie.voteAverage ?? UniqueKey().hashCode.toDouble(),
                    isHero: true,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: context.sized.height * 0.175,
            left: context.sized.width * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PosterWidget(
                  movie: movie,
                  isHero: true,
                ),
                const AppGap.small(),
                SizedBox(
                  width: context.sized.width * 0.55,
                  child: MovieTextWidget(
                    id: movie.id ?? UniqueKey().hashCode,
                    title: movie.title ?? movie.originalTitle ?? movie.id.toString(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
