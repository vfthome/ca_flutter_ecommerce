import 'package:ca_flutter_test/src/core/interactor/use_cases/i_use_cases.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/entities/template_state_entity.dart';

class SomeUseCase implements IUseCases<TemplateStateEntity> {
  @override
  Future<void> handleEvent({required TemplateStateEntity event}) {
    throw UnimplementedError();
  }
}
