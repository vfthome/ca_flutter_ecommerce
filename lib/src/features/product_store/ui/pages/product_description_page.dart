import 'package:flutter/cupertino.dart';

import '../../../../shared/modules/responsive_layout/ui/responsive_layout.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileLayout: Stack(
        children: [
          //* Product images
          Container(),

          //* Product name

          //* Product discount price

          //* Product price

          //* Product description

          //* Favorite button

          //* Return button
        ],
      ),
    );
  }
}
