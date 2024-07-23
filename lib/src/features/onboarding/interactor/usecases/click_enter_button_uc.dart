import 'dart:async';

import 'package:ca_flutter_test/src/core/interactor/use_cases/i_use_cases.dart';
import 'package:ca_flutter_test/src/core/routes/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClickEnterButtonUseCase implements IUseCases {
  @override
  Future<void> call({params}) async {
    // Navigate to next page
    Modular.to.navigate(const Routes().productStore);
  }
}
