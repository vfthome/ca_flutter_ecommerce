import 'package:ca_flutter_test/src/core/config/firebase_options.dart';
import 'package:ca_flutter_test/src/core/interactor/services/i_core_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreService implements ICoreService {
  @override
  Future<void> init() async {
    //* DEPENDENCIES INITIALIZATION - Before application starts

    // Flutter Widget Bindings
    WidgetsFlutterBinding.ensureInitialized();

    // FIREBASE - Initialization
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // Flutter Modular
    setPrintResolver((text) => debugPrint('[FLUTTER MODULAR] $text'));
  }
}
