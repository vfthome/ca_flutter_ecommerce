import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  const DisplayImage({
    super.key,
    this.height,
    this.width,
    this.fit,
    this.resolution,
    required this.imagePath,
  });

  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? resolution;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        context,
        constraints,
      ) {
        return SizedBox(
          height: height,
          width: width,
          child: Image(
            fit: fit,
            image: ResizeImage(
              Image.asset(
                imagePath,
              ).image,
              width: (constraints.maxWidth * (resolution ?? 1)).round(),
            ),
          ),
        );
      },
    );
  }
}
