import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../routes/routes.dart';
import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/modules/haptic_feedback/interactor/services/i_haptics_service.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.75),
      child: SizedBox(
        height: 50 * figmaHeight,
        width: 333 * figmaWidth,
        child: Center(
          child: AutoSizeText.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Já possui uma conta? ',
                  style: ds.typography.onboardingBody,
                ),
                TextSpan(
                  text: 'Fazer login',
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
                        const Routes().auth + const Routes().login,
                      );
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
