import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../routes/routes.dart';
import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/buttons/return_button.dart';
import 'favorites_button.dart';
import 'search_button.dart';
import 'user_profile.dart';

class TopMenuBar extends StatelessWidget {
  const TopMenuBar({
    super.key,
    this.returnVisible = false,
    this.title = 'E-commerce',
  });

  final bool returnVisible;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 19 * figmaHeight),
      child: Row(
        children: [
          SizedBox(
            width: returnVisible ? 0 : 20 * figmaWidth,
          ),

          //* Return Button
          returnVisible
              ? ReturnButton(
                  onTap: () {
                    // Navigate to authentication page
                    Modular.to.navigate('${const Routes().productStore}/');
                  },
                  darkMode: true,
                  splashColor: ds.colors.primary.withOpacity(0.05),
                )
              : const SizedBox(),

          returnVisible ? const Spacer() : const SizedBox(),

          //* Title
          SizedBox(
            width: returnVisible ? 230 * figmaWidth : 173.97 * figmaWidth,
            height: 56 * figmaHeight,
            child: Center(
              child: AutoSizeText(
                title,
                maxLines: 1,
                style: ds.typography.defaultTitle,
              ),
            ),
          ),

          const Spacer(),

          //* Favorites button
          !returnVisible ? const FavoritesButton() : const SizedBox(),

          SizedBox(
            width: returnVisible ? 0 : 5 * figmaWidth,
          ),

          //* Search button
          !returnVisible ? const SearchButton() : const SizedBox(),

          SizedBox(
            width: 5 * figmaWidth,
          ),

          //* User profile
          const UserProfile(),

          SizedBox(
            width: 20 * figmaWidth,
          ),
        ],
      ),
    );
  }
}
