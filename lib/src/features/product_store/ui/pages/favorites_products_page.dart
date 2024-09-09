import 'package:flutter/material.dart';

import '../../../../shared/modules/responsive_layout/ui/responsive_layout.dart';
import '../widgets/filter_bar.dart';
import '../widgets/top_menu_bar.dart';

class FavoritesProductsPage extends StatelessWidget {
  const FavoritesProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      backgroundColor: Colors.white,
      mobileLayout: Stack(
        children: [
          Container(),

          //* Filters
          const SafeArea(
            child: Align(
              alignment: Alignment(0, -0.75),
              child: FilterBar(),
            ),
          ),

          //* Top menu bar
          const SafeArea(
            child: TopMenuBar(
              returnVisible: true,
              title: 'Favorite products',
            ),
          ),

          //* Products
          // ...productWidgets,
        ],
      ),
    );
  }
}
