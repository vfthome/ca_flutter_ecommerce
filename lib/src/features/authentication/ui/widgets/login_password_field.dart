import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/input_fields/password_field/password_form_field.dart';
import '../../interactor/services/i_auth_service.dart';

class LoginPasswordField extends StatelessWidget {
  const LoginPasswordField({
    super.key,
    required this.passwordFormKey,
  });

  final GlobalKey<FormState> passwordFormKey;

  @override
  Widget build(BuildContext context) {
    final viewController = Modular.get<IAuthService>();

    return SizedBox(
      width: 270 * figmaWidth,
      child: Center(
        child: PasswordFormField(
          formKey: passwordFormKey,
          onDone: () {
            viewController.login();
          },
          onChanged: (password) {
            viewController.updateAuthState(
              newStateEntity: viewController.state.copyWith(
                password: atom(password ?? ''),
              ),
            );
          },
          onValidate: (isValid) {
            viewController.updateAuthState(
              newStateEntity: viewController.state.copyWith(
                hasError: atom(!isValid),
              ),
            );
          },
        ),
      ),
    );
  }
}
