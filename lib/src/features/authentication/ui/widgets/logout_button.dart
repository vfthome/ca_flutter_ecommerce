import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/routes/routes.dart';
import '../../../../shared/widgets/buttons/big_button.dart';
import '../../interactor/services/i_auth_service.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
    required this.viewController,
  });

  final IAuthService viewController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.7),
      child: BigButton(
        buttonText: 'Logout',
        isLoading: viewController.state.isLoading,
        onTap: () {
          // Navigate to login page
          Modular.to.navigate(
            const Routes().auth,
          );
        },
      ),
    );
  }
}
