import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/modules/responsive_layout/ui/responsive_layout.dart';
import '../../interactor/services/i_product_store_service.dart';
import '../widgets/categories_bar.dart';
import '../widgets/countdown_timer.dart';
import '../widgets/featured_product.dart';
import '../widgets/filter_bar.dart';
import '../widgets/loading_spinner.dart';
import '../widgets/product.dart';
import '../widgets/top_menu_bar.dart';

class ProductStorePage extends StatefulWidget {
  const ProductStorePage({super.key});

  @override
  State<ProductStorePage> createState() => _ProductStorePageState();
}

class _ProductStorePageState extends State<ProductStorePage> {
  late final ScrollController _scrollController;
  final viewController = Modular.get<IProductStoreService>();

  //* INIT STATE METHOD
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    //* Update products list when scroll reaches the end
    _scrollController.addListener(
      () {
        if (_scrollController.position.maxScrollExtent ==
            _scrollController.offset) {
          debugPrint('Loading more items!');
          viewController.getMoreProducts();
        }
      },
    );
    //* Initial update
    viewController.getMoreProducts();
  }

  //* DISPOSE METHOD
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  //* BUILD METHOD
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileLayout: Stack(
        children: [
          //* White Background
          Container(
            color: Colors.white,
          ),

          //* Safe area content
          SafeArea(
            child: AtomBuilder(builder: (context, get) {
              // Gets current state
              final products = get(viewController.state.productsAtom);
              final productWidgets = [];

              for (final product in products) {
                productWidgets.add(Product(productInfo: product));
              }

              final widgetsList = [
                //* Top menu bar
                const TopMenuBar(),

                //* Featured Product
                const FeaturedProduct(),

                //* Countdown timer
                const CountdownTimer(),

                //* Categories bar
                const CategoriesBar(),

                //* Filters
                const FilterBar(),

                //* Products
                ...productWidgets,
              ];

              return ListView.builder(
                controller: _scrollController,
                itemCount: widgetsList.length + 1,
                itemBuilder: (context, index) {
                  if (index == widgetsList.length) {
                    //* Loading Spinner
                    return const LoadingSpinner();
                  } else {
                    return widgetsList[index];
                  }
                },
              );
            }),
          )
        ],
      ),
    );
  }
}
