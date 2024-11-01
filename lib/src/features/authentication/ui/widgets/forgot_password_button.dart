import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../routes/routes.dart';
import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/modules/haptic_feedback/interactor/services/i_haptics_service.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0),
      child: SizedBox(
        height: 37 * figmaHeight,
        width: 233 * figmaWidth,
        child: AutoSizeText.rich(
          maxLines: 1,
          TextSpan(
            children: [
              TextSpan(
                text: 'Esqueceu sua senha?',
                style: ds.typography.smallText.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: ds.colors.black,
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
    );
  }
}
