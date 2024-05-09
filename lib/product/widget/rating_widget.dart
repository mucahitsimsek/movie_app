// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:interview/product/widget/gap/app_gap.dart';
import 'package:kartal/kartal.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    required this.rating,
    this.isHero = false,
    super.key,
  });

  ///Rating
  final double rating;
  final bool isHero;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: rating.hashCode,
      child: Row(
        children: [
          Assets.icons.rating.svg(),
          const AppGap.extraSmall(),
          Text(
            rating.toStringAsFixed(1),
            style: context.general.textTheme.bodyLarge!.copyWith(
              color: isHero ? ColorName.rating : ColorName.detailText,
            ),
          ),
        ],
      ),
    );
  }
}
