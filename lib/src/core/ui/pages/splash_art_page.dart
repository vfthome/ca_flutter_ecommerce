import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/design_system/design_system.dart';
import '../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../shared/modules/responsive_layout/ui/responsive_layout.dart';
import '../../../shared/widgets/display_media/display_svg/display_svg.dart';
import '../../routes/routes.dart';

class SplashArt extends StatefulWidget {
  const SplashArt({super.key});

  @override
  State<SplashArt> createState() => _SplashArtState();
}

class _SplashArtState extends State<SplashArt>
    with SingleTickerProviderStateMixin {
  // --- VARIABLES ---
  late final AnimationController _controller;
  double cartPosition = -1.6;
  double cropFactor = 0;

  // Navigates to the Onboarding after a delay if user is not authenticated,
  // otherwise navigates to the Home page.
  void delayedNavigation() {
    Timer(
      const Duration(milliseconds: 3300),
      () {
        Modular.to.navigate(const Routes().onboarding);
      },
    );
  }

  void calculateTweens() {
    // Calculate cart position
    cartPosition = Tween<double>(
      begin: -1.6,
      end: 0.66,
    )
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(
              0.0,
              0.33,
              curve: Curves.ease,
            ),
          ),
        )
        .value;

    cropFactor = Tween<double>(begin: 0, end: 1)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(
              0.07,
              0.4,
              curve: Curves.ease,
            ),
          ),
        )
        .value;
  }

  // --- INIT STATE METHOD ---
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Begin animation
    _controller.forward();
  }

  // --- DISPOSE METHOD ---
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // --- BUILD METHOD ---
  @override
  Widget build(BuildContext context) {
    // Responsive Layout is the core widget used for every application page.
    // It is responsible for handling the layout and rebuild of the application according
    // to the current device size.
    return ResponsiveLayout(
      mobileLayout: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            calculateTweens();
            delayedNavigation();

            return Stack(
              children: [
                // Background
                Container(
                  color: ds.colors.primary,
                ),

                // Animated Logo
                Align(
                  alignment: const Alignment(0, -0.13),
                  child: SizedBox(
                    height: 91 * figmaHeight,
                    child: Stack(
                      children: [
                        // Logo 1 - Conta azul text
                        Row(
                          children: [
                            SizedBox(
                              width: 60 * figmaWidth,
                            ),
                            ClipRect(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                widthFactor: cropFactor,
                                child: DisplaySvg(
                                  width: 240.13 * figmaWidth,
                                  height: 54 * figmaHeight,
                                  svgPath: ds.assets.svg.logo1.path,
                                  color: ds.colors.white,
                                ),
                              ),
                            ),
                          ],
                        ).animate().shimmer(
                              delay: const Duration(seconds: 1),
                              duration: const Duration(seconds: 1),
                              color: ds.colors.primary.withOpacity(0.5),
                            ),

                        // Logo 2 - Shopping cart
                        Align(
                          alignment: Alignment(
                            cartPosition,
                            -2.8,
                          ),
                          child: DisplaySvg(
                            width: 88.92 * figmaWidth,
                            height: 70.07 * figmaHeight,
                            svgPath: ds.assets.svg.logo2.path,
                            color: ds.colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
