import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/input_fields/password_field/password_form_field.dart';
import '../../interactor/services/i_auth_service.dart';

class SignUpPasswordField extends StatelessWidget {
  const SignUpPasswordField({
    super.key,
    required this.passwordFormKey,
  });

  final GlobalKey<FormState> passwordFormKey;

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<IAuthService>();

    return SizedBox(
      width: 270 * figmaWidth,
      child: Center(
        child: PasswordFormField(
          formKey: passwordFormKey,
          onDone: () {
            controller.createAccount();
          },
          onChanged: (password) {
            controller.updateAuthState(
              newStateEntity: controller.state.copyWith(
                password: atom(password ?? ''),
              ),
            );
          },
        ),
      ),
    );
  }
}
