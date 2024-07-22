import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MaterialAppConfig extends StatelessWidget {
  const MaterialAppConfig({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // Application title
      title: 'Conta Azul - Flutter Test',
      // Hides debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF02AFF0)),
        // Material Design 3.0 enabled
        useMaterial3: true,
      ),
      // Modular router configuration
      routerConfig: Modular.routerConfig,
    );
  }
}
