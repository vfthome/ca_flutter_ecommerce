import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DisplaySvg extends StatelessWidget {
  const DisplaySvg({
    super.key,
    this.height,
    this.width,
    this.fit,
    this.color,
    required this.svgPath,
  });

  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: LayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          return SvgPicture.asset(
            svgPath,
            fit: fit ?? BoxFit.contain,
            width: double.infinity,
            height: double.infinity,
            colorFilter: color != null
                ? ColorFilter.mode(color!, BlendMode.srcIn)
                : null,
          );
        },
      ),
    );
  }
}
