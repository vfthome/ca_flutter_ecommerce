import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_platform_info.dart';
import '../../../../shared/widgets/buttons/big_button.dart';
import '../../interactor/services/i_auth_service.dart';
import 'sign_up_email_field.dart';
import 'sign_up_password_field.dart';

class SignUpContainer extends StatefulWidget {
  const SignUpContainer({
    super.key,
  });

  @override
  State<SignUpContainer> createState() => _SignUpContainerState();
}

class _SignUpContainerState extends State<SignUpContainer> {
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
        GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
        ),

        //* Container with shadow
        IgnorePointer(
          ignoring: true,
          child: Align(
            alignment: Alignment(0, -keyboardOffset),
            child: Container(
              height: 514 * figmaHeight,
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
        ),

        Align(
          alignment: Alignment(0, -keyboardOffset),
          child: SizedBox(
            height: 514 * figmaHeight,
            width: 333 * figmaWidth,
            child: Column(
              children: [
                // Spacing
                SizedBox(height: (359 - 162) * figmaHeight),
                //* Title
                IgnorePointer(
                  ignoring: true,
                  child: SizedBox(
                    height: 53 * figmaHeight,
                    width: 233 * figmaWidth,
                    child: Center(
                      child: AutoSizeText(
                        'Cadastre-se',
                        style: ds.typography.defaultTitle,
                      ),
                    ),
                  ),
                ),
                //* Email field
                SignUpEmailField(emailFormKey: emailFormKey),
                // Spacing
                SizedBox(height: 25 * figmaHeight),
                //* Password form field
                SignUpPasswordField(passwordFormKey: passwordFormKey),
                // Spacing
                const Spacer(),
                //* Create account button
                BigButton(
                  buttonText: 'Criar sua conta',
                  onTap: () {
                    viewController.createAccount();
                  },
                  isLoading: viewController.state.isLoading,
                ),
                // Spacing
                SizedBox(height: 25 * figmaHeight),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
