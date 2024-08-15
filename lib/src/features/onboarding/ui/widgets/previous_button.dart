import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/buttons/transparent_button.dart';
import '../../../../shared/widgets/display_media/display_svg/display_svg.dart';
import '../../../../shared/widgets/transform/mirror_horizontal.dart';
import '../../interactor/services/i_onboarding_controller_service.dart';

class PreviousButton extends StatelessWidget {
  const PreviousButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AtomBuilder(builder: (context, get) {
      // Fetch onboarding state from D.I.
      final onboardingController = Modular.get<IOnboardingControllerService>();

      // Subscribe to onboarding page events
      final leftButtonVisible =
          get(onboardingController.state.displayLeftArrowAtom);
      final enterButtonVisible =
          get(onboardingController.state.displayEnterButtonAtom);

      return AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: leftButtonVisible ? 1 : 0,
        child: MirrorHorizontal(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30 * figmaDiagonal),
            ),
            child: AnimatedContainer(
              color: enterButtonVisible
                  ? ds.colors.primary
                  : ds.colors.lightContainer,
              width: 134 * figmaWidth,
              height: 69 * figmaHeight,
              duration: const Duration(milliseconds: 300),
              child: Stack(
                children: [
                  //* Button Content
                  Center(
                    child: MirrorHorizontal(
                      child: DisplaySvg(
                        width: 36 * figmaWidth,
                        height: 36 * figmaHeight,
                        svgPath: ds.assets.svg.arrowLeft.path,
                      ),
                    ),
                  ),

                  //* Button gesture detector
                  TransparentButton(
                    onTap: () {
                      onboardingController.state.scrollEndedAtom.state
                          ? onboardingController.clickPreviousButton()
                          : null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
