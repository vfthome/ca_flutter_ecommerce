import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../routes/routes.dart';
import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/ui/responsive_layout.dart';
import '../../../../shared/widgets/buttons/return_button.dart';
import '../widgets/company_logo.dart';
import '../widgets/dont_have_account_button.dart';
import '../widgets/login_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      backgroundColor: ds.colors.primary,
      mobileLayout: Stack(
        children: [
          //* Company logo
          const CompanyLogo(),

          //* Login container
          const LoginContainer(),

          //* Don't have an account button
          const DontHaveAccountButton(),

          //* Return button
          ReturnButton(
            onTap: () {
              // Navigate to sign up page
              Modular.to.navigate(
                const Routes().auth,
              );
            },
          ),
        ],
      ),
    );
  }
}
