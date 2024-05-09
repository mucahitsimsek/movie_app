import 'package:flutter/material.dart';
import 'package:interview/product/widget/padding/app_padding.dart';

/// Padding attributes for the MY APP
final class AppGap extends Padding {
  /// [AppGap.small] 4 point small size padding for all
  const AppGap.extraSmall({super.key})
      : super(
          padding: const AppPadding.extraSmall(),
        );

  /// [AppGap.small] 8 point small size padding for all
  const AppGap.small({super.key})
      : super(
          padding: const AppPadding.small(),
        );

  /// [AppGap.smallBig] 12 point smallBig all padding size
  const AppGap.smallBig({super.key})
      : super(
          padding: const AppPadding.allSmallBig(),
        );

  /// [AppGap.regular] regular symmetric Vertical padding
  const AppGap.regular({super.key})
      : super(
          padding: const AppPadding.allRegular(),
        );

  /// [AppGap.big] big all padding size
  const AppGap.big({super.key})
      : super(
          padding: const AppPadding.allBig(),
        );

  /// [AppGap.extraBig] big all padding size
  const AppGap.extraBig({super.key})
      : super(
          padding: const AppPadding.extraBig(),
        );

  /// [AppGap.only] only
  AppGap.only({
    super.key,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    double left = 0.0,
  }) : super(
          padding: AppPadding.only(
            top: top,
            right: right,
            bottom: bottom,
            left: left,
          ),
        );
}
