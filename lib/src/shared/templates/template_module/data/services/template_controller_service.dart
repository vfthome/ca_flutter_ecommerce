import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/entities/template_state_entity.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/repositories/i_template_repository.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/services/i_template_controller_service.dart';

class TemplateControllerService implements ITemplateControllerService {
  final TemplateStateEntity _state;
  final ITemplateRepository _repository;

  TemplateControllerService({
    required TemplateStateEntity initialState,
    required ITemplateRepository featureRepository,
  })  : _state = initialState,
        _repository = featureRepository {
    // Updates default feature value with local database data (for example)
    atomAction((set) {
      set(_state.isLoading, _repository.fetchLocalTemplates());
    }).call();
  }

  @override
  TemplateStateEntity get state => throw UnimplementedError();
}
