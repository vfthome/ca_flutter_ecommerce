import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../interactor/services/i_core_service.dart';

class CoreService implements ICoreService {
  @override
  Future<void> init() async {
    //* DEPENDENCIES INITIALIZATION - Before application starts

    // Flutter Widget Bindings
    WidgetsFlutterBinding.ensureInitialized();

    // // FIREBASE - Initialization
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );

    // Flutter Modular
    setPrintResolver((text) => debugPrint('[FLUTTER MODULAR] $text'));
  }
}
