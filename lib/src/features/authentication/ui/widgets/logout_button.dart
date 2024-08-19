import 'package:ca_flutter_test/src/core/routes/routes.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/services/i_auth_service.dart';
import 'package:ca_flutter_test/src/shared/widgets/buttons/big_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
