import 'package:asp/asp.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/routes/routes.dart';
import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/haptic_feedback/interactor/services/i_haptics_service.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../interactor/services/i_auth_service.dart';

class DontHaveAccountButton extends StatelessWidget {
  const DontHaveAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AtomBuilder(
      builder: (context, get) {
        final viewController = Modular.get<IAuthService>();
        final hasError = get(viewController.state.hasError);

        return AnimatedAlign(
          duration: Durations.medium1,
          alignment: Alignment(0, hasError ? 0.88 : 0.68),
          child: SizedBox(
            height: 50 * figmaHeight,
            width: 335 * figmaWidth,
            child: Center(
              child: AutoSizeText.rich(
                maxLines: 1,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Não possui uma conta? ',
                      style: ds.typography.onboardingBody,
                    ),
                    TextSpan(
                      text: 'Cadastre-se',
                      style: ds.typography.onboardingBody.copyWith(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        decorationColor: ds.colors.light,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Modular.get<IHapticService>().mediumImpact();
                          // Navigate to login page
                          Modular.to.navigate(
                            const Routes().auth,
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
