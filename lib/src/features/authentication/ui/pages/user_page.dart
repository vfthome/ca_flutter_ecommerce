import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/entities/user_entity.dart';
import 'package:ca_flutter_test/src/features/authentication/ui/widgets/credits.dart';
import 'package:ca_flutter_test/src/features/authentication/ui/widgets/logout_button.dart';
import 'package:ca_flutter_test/src/shared/widgets/display_media/display_svg/display_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../../shared/modules/responsive_layout/ui/responsive_layout.dart';
import '../../../../shared/widgets/display_media/display_image/display_image.dart';
import '../../../product_store/ui/widgets/top_menu_bar.dart';
import '../../interactor/services/i_auth_service.dart';
import '../widgets/delete_account_button.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewController = Modular.get<IAuthService>();
    viewController.updateAuthState(
      newStateEntity: viewController.state.copyWith(
        user: atom(UserEntity(token: '', email: '', id: '6')),
      ),
    );

    return ResponsiveLayout(
      backgroundColor: Colors.white,
      mobileLayout: Stack(
        children: [
          //* Profile picture
          Align(
            alignment: const Alignment(0, -0.48),
            child: DisplayImage(
              height: 200 * figmaHeight,
              width: 200 * figmaWidth,
              imagePath: ds.assets.image.profilePicture.path,
            ),
          ),

          //* VFTHOME logo
          Align(
            alignment: const Alignment(0, 0.2),
            child: DisplaySvg(
              height: 120 * figmaHeight,
              svgPath: ds.assets.svg.vfthomeLogo.path,
            ),
          ),

          //* Credits
          const Credits(),

          //* Logout button
          LogoutButton(viewController: viewController),

          //* Delete account button
          const DeleteAccountButton(),

          //* Top menu bar
          const SafeArea(
            child: TopMenuBar(
              title: 'User page',
              returnVisible: true,
            ),
          ),
        ],
      ),
    );
  }
}
