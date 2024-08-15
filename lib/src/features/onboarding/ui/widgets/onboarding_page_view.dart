import 'dart:async';

import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_device_size.dart';
import '../../../../shared/widgets/display_media/display_image/display_image.dart';
import '../../interactor/services/i_onboarding_controller_service.dart';
import 'onboarding_body.dart';
import 'onboarding_title.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  @override
  Widget build(BuildContext context) {
    bool animationInProgress = false;

    return AtomBuilder(
      builder: (context, get) {
        // Fetch onboarding state from D.I.
        final onboardingController =
            Modular.get<IOnboardingControllerService>();

        final currentPage = get(onboardingController.state.currentPageAtom);

        if (widget._controller.hasClients && !animationInProgress && mounted) {
          // Subscribe to onboarding page events
          widget._controller
              .animateTo(
            (currentPage) * deviceWidth,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutCubic,
          )
              .then((_) {
            animationInProgress = false;
          });
          animationInProgress = true;
        }

        return NotificationListener(
          onNotification: (scrollNotification) {
            if (mounted) {
              if (scrollNotification is ScrollStartNotification) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  onboardingController.updateScrollState(params: false);
                });
              } else if (scrollNotification is ScrollEndNotification) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Timer(
                    const Duration(milliseconds: 700),
                    () => onboardingController.updateScrollState(params: true),
                  );
                });
              }
            }

            return true;
          },
          child: PageView.builder(
            controller: widget._controller,
            itemCount: 3,
            itemBuilder: (context, currentPageIndex) {
              // Get current state
              final currentPageContents = onboardingController
                  .state.onboardingContentAtom.state[currentPageIndex];

              return Stack(
                children: [
                  // Image Frame
                  Align(
                    alignment: const Alignment(0, -0.28),
                    child: DisplayImage(
                      imagePath: currentPageContents.imagePath,
                    ),
                  ),

                  // Onboarding body
                  Align(
                    alignment: const Alignment(0, 0.4),
                    child: OnboardingBody(
                      body: currentPageContents.body,
                      style: ds.typography.onboardingBody,
                    ),
                  ),

                  // Onboarding Title
                  Align(
                    alignment: const Alignment(0, 0.20),
                    child: OnboardingTitle(
                      title: currentPageContents.title,
                      style: ds.typography.onboardingTitle.copyWith(
                        color: ds.colors.light,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
