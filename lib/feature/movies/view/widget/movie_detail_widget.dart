// ignore_for_file: lines_longer_than_80_chars

part of '.././movies_view.dart';

///Movie Detail Widget
final class MovieDetailWidget extends StatelessWidget {
  ///Constructor
  const MovieDetailWidget({
    required this.movie,
    super.key,
  });

  ///Movie
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sized.height * 0.3,
      width: context.sized.width * 0.45,
      child: GestureDetector(
        onTap: () async {
          await context.pushRoute(MovieRoute(movie: movie));
          await ProductStateItems.faService.logEvent(
            name: 'movie_detail',
            parameters: {
              'movie': movie.title,
              'movie_id': movie.id.toString(),
              'movie_language': movie.originalLanguage ?? 'en',
              'movie_vote_average': movie.voteAverage.toString(),
              'movie_vote_count': movie.voteCount.toString(),
              'movie_popularity': movie.popularity.toString(),
              'movie_release_date': movie.releaseDate ?? 'unknown',
            },
          );
        },
        child: ClipRRect(
          borderRadius: context.border.normalBorderRadius,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                PosterWidget(movie: movie),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      transform: const GradientRotation(0.5),
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        ColorName.background.withOpacity(0.6),
                        ColorName.background.withOpacity(1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const AppPadding.allRegular(),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MovieTextWidget(
                          id: movie.id ?? UniqueKey().hashCode,
                          title: movie.title ?? movie.originalTitle ?? movie.id.toString(),
                        ),
                        RatingWidget(
                          rating: movie.voteAverage!,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
