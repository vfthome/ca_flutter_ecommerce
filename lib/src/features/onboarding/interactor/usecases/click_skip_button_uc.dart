import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../../../../core/routes/routes.dart';

class ClickSkipButtonUseCase implements IUseCases {
  @override
  Future<void> call({params}) async {
    // Navigate to next page
    Modular.to.navigate(const Routes().productStore);
  }
}
