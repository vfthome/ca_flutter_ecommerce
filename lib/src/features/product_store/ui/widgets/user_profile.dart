import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../routes/routes.dart';
import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/buttons/transparent_button.dart';
import '../../../../shared/widgets/display_media/display_image/display_image.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular((26.85 * figmaWidth) / 2),
      child: SizedBox(
        height: 2 * 26.85 * figmaWidth,
        width: 2 * 26.85 * figmaWidth,
        child: Stack(
          children: [
            Center(
              child: DisplayImage(
                height: 39 * figmaHeight,
                width: 39 * figmaWidth,
                imagePath: ds.assets.image.profilePicture.path,
              ),
            ),
            TransparentButton(
              splashColor: ds.colors.primary.withOpacity(0.1),
              onTap: () {
                // Navigate to authentication page
                Modular.to.navigate(
                  const Routes().auth + const Routes().userPage,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
