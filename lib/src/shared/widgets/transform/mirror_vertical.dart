import 'package:flutter/widgets.dart';

class MirrorVertical extends StatelessWidget {
  const MirrorVertical({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Transform.flip(
      flipY: true,
      child: child,
    );
  }
}
