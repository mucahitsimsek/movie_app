// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:interview/product/utility/extensions/string_ext.dart';
import 'package:kartal/kartal.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({
    required this.movie,
    this.isHero = false,
    super.key,
  });

  final Movie movie;
  final bool isHero;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: movie.posterPath!.hashCode,
      child: ClipRRect(
        borderRadius: context.border.normalBorderRadius,
        child: movie.posterPath!.asNetworkImage.copyWith(
          size: Size(
            context.sized.width * (!isHero ? 0.45 : 0.45 / 1.6),
            context.sized.height * (!isHero ? 0.35 : 0.325 / 1.6),
          ),
        ),
      ),
    );
  }
}
