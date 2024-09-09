import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/input_fields/email_field/email_field.dart';
import '../../interactor/services/i_auth_service.dart';

class LoginEmailField extends StatelessWidget {
  const LoginEmailField({
    super.key,
    required this.emailFormKey,
  });

  final GlobalKey<FormState> emailFormKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270 * figmaWidth,
      child: Center(
        child: EmailField(
          emailFormKey: emailFormKey,
          onDone: () {},
          onChanged: (email) {
            final controller = Modular.get<IAuthService>();
            controller.updateAuthState(
              newStateEntity: controller.state.copyWith(
                user: atom(controller.state.user.state.copyWith(email: email)),
              ),
            );
          },
        ),
      ),
    );
  }
}
