import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/ui/responsive_layout.dart';
import '../widgets/already_have_account_button.dart';
import '../widgets/sign_up_container.dart';
import '../widgets/sign_up_id_card.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      backgroundColor: ds.colors.primary,
      mobileLayout: const Stack(
        children: [
          //* Sign-up container
          SignUpContainer(),

          //* Already have an account button
          AlreadyHaveAccount(),

          //* Id card image
          SignUpIdCard(),
        ],
      ),
    );
  }
}
