import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../design_system/design_system.dart';
import '../../modules/haptic_feedback/interactor/services/i_haptics_service.dart';

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
          Modular.get<IHapticService>().mediumImpact();
        },
      ),
    );
  }
}
