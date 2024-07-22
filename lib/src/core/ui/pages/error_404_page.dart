import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:flutter/material.dart';

class Error404Page extends StatelessWidget {
  const Error404Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Error 404: Page not found',
          style: TextStyle(
            fontFamily: ds.fonts.houschkaPro,
            // fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
