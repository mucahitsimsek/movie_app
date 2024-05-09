import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

///Custom network image widget
class AppNetworkImage extends StatelessWidget {
  ///Constructor
  const AppNetworkImage({
    required this.imageUrl,
    super.key,
    this.size,
    this.child,
  });

  ///Image url
  final String imageUrl;

  ///Size of the image
  final Size? size;

  ///Child widget
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomNetworkImage(
          imageUrl: imageUrl,
          size: size,
          boxFit: BoxFit.fill,
          loadingBuilder: Transform.scale(
            scale: 0.2,
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(ColorName.rating),
            ),
          ),
        ),
        child ?? const SizedBox(),
      ],
    );
  }

  ///Copy with method
  AppNetworkImage copyWith({
    Size? size,
    Widget? child,
  }) {
    return AppNetworkImage(
      imageUrl: imageUrl,
      size: size ?? this.size,
      child: child ?? this.child,
    );
  }
}
