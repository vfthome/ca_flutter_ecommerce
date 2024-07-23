import 'package:asp/asp.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/services/i_onboarding_controller_service.dart';
import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import 'package:ca_flutter_test/src/shared/widgets/buttons/transparent_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomBuilder(builder: (context, get) {
      // Fetch onboarding state from D.I.
      final onboardingController = Modular.get<IOnboardingControllerService>();

      // Subscribe to onboarding page events
      final currentPage = get(onboardingController.state.currentPageAtom);
      // Subscribe to onboarding page events
      get(onboardingController.state.scrollEndedAtom);

      return AnimatedOpacity(
        opacity: currentPage > 0 ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30 * figmaDiagonal),
          ),
          child: SizedBox(
            width: 134 * figmaWidth,
            height: 69 * figmaHeight,
            child: Stack(
              children: [
                //* Button BG
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  color: !onboardingController.state.scrollEndedAtom.state
                      ? ds.colors.lightContainer.withOpacity(0.3)
                      : ds.colors.lightContainer,
                ),

                //* Button Content
                Center(
                  child: SizedBox(
                    width: 84 * figmaWidth,
                    height: 39 * figmaHeight,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        'pular',
                        style: ds.typography.onboardingBody,
                      ),
                    ),
                  ),
                ),

                //* Button gesture detector
                !onboardingController.state.scrollEndedAtom.state
                    ? const SizedBox()
                    : TransparentButton(
                        onTap: () {
                          onboardingController.state.scrollEndedAtom.state
                              ? onboardingController.clickSkipButton()
                              : null;
                        },
                      ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
