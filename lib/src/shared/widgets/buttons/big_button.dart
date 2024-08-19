import 'package:asp/asp.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../design_system/design_system.dart';
import '../../modules/responsive_layout/constants/k_figma_auto_scale.dart';
import 'transparent_button.dart';

class BigButton extends StatelessWidget {
  final Function? onTap;
  final String buttonText;
  final Atom<bool>? isLoading;

  const BigButton({
    super.key,
    this.onTap,
    required this.buttonText,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return AtomBuilder(builder: (context, get) {
      final loading = get(isLoading ?? atom(false));

      return ClipRRect(
        borderRadius: BorderRadius.circular(15 * figmaDiagonal),
        child: Container(
          width: 280 * figmaWidth,
          height: 50 * figmaHeight,
          color: ds.colors.darkBlue,
          child: Stack(
            children: [
              //* Button text
              loading
                  ? Center(
                      child: CircularProgressIndicator(
                      color: ds.colors.white,
                    ))
                  : Center(
                      child: SizedBox(
                        height: 30 * figmaHeight,
                        width: 180 * figmaWidth,
                        child: Center(
                          child: AutoSizeText(
                            buttonText,
                            style: ds.typography.largeButton,
                          ),
                        ),
                      ),
                    ),

              //* Transparent button
              TransparentButton(
                splashColor: ds.colors.primary.withOpacity(0.15),
                onTap: () {
                  onTap?.call();
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
