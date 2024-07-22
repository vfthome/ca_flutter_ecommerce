import 'package:flutter/widgets.dart';

class MirrorHorizontal extends StatelessWidget {
  const MirrorHorizontal({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Transform.flip(
      flipX: true,
      child: child,
    );
  }
}
