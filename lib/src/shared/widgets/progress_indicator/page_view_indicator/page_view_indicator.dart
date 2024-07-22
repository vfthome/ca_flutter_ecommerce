import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import 'package:flutter/material.dart';

class PageViewProgressBar extends StatelessWidget {
  const PageViewProgressBar({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10 * figmaHeight,
      width: 100 * figmaWidth,
      child: Row(
        children: [
          // Animated indicator
          AnimatedContainer(
            width: currentPage == 0 ? 30 : 10,
            height: 10,
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: currentPage == 0
                  ? ds.colors.currentPageIndicator
                  : ds.colors.light,
              borderRadius: BorderRadius.circular(5),
            ),
          ),

          // Spacing
          const Spacer(),

          // Animated indicator
          AnimatedContainer(
            width: currentPage == 1 ? 30 : 10,
            height: 10,
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: currentPage == 1
                  ? ds.colors.currentPageIndicator
                  : ds.colors.light,
              borderRadius: BorderRadius.circular(5),
            ),
          ),

          // Spacing
          const Spacer(),

          // Animated indicator
          AnimatedContainer(
            width: currentPage == 2 ? 30 : 10,
            height: 10,
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: currentPage == 2
                  ? ds.colors.currentPageIndicator
                  : ds.colors.light,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
