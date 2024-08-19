import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import 'package:ca_flutter_test/src/shared/widgets/buttons/transparent_button.dart';
import 'package:ca_flutter_test/src/shared/widgets/display_media/display_image/display_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/routes/routes.dart';

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
