import 'package:asp/asp.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../../shared/modules/responsive_layout/constants/k_platform_info.dart';
import '../../../../shared/widgets/buttons/big_button.dart';
import '../../interactor/services/i_auth_service.dart';
import 'forgot_password_button.dart';
import 'login_email_field.dart';
import 'login_password_field.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({
    super.key,
  });

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> passwordFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final viewController = Modular.get<IAuthService>();

  @override
  Widget build(BuildContext context) {
    final double keyboardOffset = MediaQuery.of(context).viewInsets.bottom /
        platformInfo.availableViewportHeight;

    return Stack(
      children: [
        //* Hide keyboard
        GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
        ),

        //* Container with shadow
        AtomBuilder(builder: (context, get) {
          final hasError = get(viewController.state.hasError);

          return IgnorePointer(
            ignoring: true,
            child: AnimatedAlign(
              duration: Durations.medium1,
              alignment: Alignment(
                0,
                hasError ? 0.4 - keyboardOffset : 0.2 - keyboardOffset,
              ),
              child: AnimatedContainer(
                duration: Durations.medium1,
                height: hasError ? 450 * figmaHeight : 350 * figmaHeight,
                width: 333 * figmaWidth,
                decoration: BoxDecoration(
                  color: ds.colors.white,
                  borderRadius: BorderRadius.circular(15 * figmaDiagonal),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(
                        3 * figmaWidth,
                        6 * figmaHeight,
                      ),
                      blurRadius: 3.0,
                      spreadRadius: 1,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),

        //* Container internal content
        AtomBuilder(builder: (context, get) {
          final hasError = get(viewController.state.hasError);

          return Align(
            alignment: Alignment(
              0,
              hasError ? 0.41 - keyboardOffset : 0.2 - keyboardOffset,
            ),
            child: SizedBox(
              height: hasError ? 450 * figmaHeight : 350 * figmaHeight,
              width: 333 * figmaWidth,
              child: Column(
                children: [
                  // Spacing
                  SizedBox(height: 15 * figmaHeight),
                  //* Title
                  IgnorePointer(
                    ignoring: true,
                    child: SizedBox(
                      height: 53 * figmaHeight,
                      width: 233 * figmaWidth,
                      child: Center(
                        child: AutoSizeText(
                          'Login',
                          style: ds.typography.defaultTitle,
                        ),
                      ),
                    ),
                  ),
                  //* Email field
                  LoginEmailField(emailFormKey: emailFormKey),
                  // Spacing
                  SizedBox(height: 25 * figmaHeight),
                  //* Password form field
                  LoginPasswordField(passwordFormKey: passwordFormKey),
                  // Spacing
                  SizedBox(height: 10 * figmaHeight),
                  //* Forgot password button
                  const ForgotPasswordButton(),
                  // Spacing
                  const Spacer(),
                  //* Create account button
                  BigButton(
                    buttonText: 'Entrar',
                    onTap: () {
                      viewController.login();
                    },
                    isLoading: viewController.state.isLoading,
                  ),
                  // Spacing
                  SizedBox(height: 25 * figmaHeight),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
