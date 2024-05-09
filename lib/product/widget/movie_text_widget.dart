// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MovieTextWidget extends StatelessWidget {
  const MovieTextWidget({
    required this.title,
    required this.id,
    this.isHero = false,
    super.key,
  });

  final String title;
  final bool isHero;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: id.hashCode,
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: !isHero
            ? context.general.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              )
            : context.general.textTheme.headlineSmall,
      ),
    );
  }
}
