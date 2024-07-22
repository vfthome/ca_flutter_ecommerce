import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({
    super.key,
    this.onTap,
    this.splashColor,
  });

  final Function()? onTap;
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: splashColor ?? ds.colors.light.withOpacity(0.5),
        overlayColor: WidgetStatePropertyAll(
          splashColor ?? ds.colors.light.withOpacity(0.15),
        ),
        onTap: () {
          onTap != null ? onTap!() : null;
        },
      ),
    );
  }
}
