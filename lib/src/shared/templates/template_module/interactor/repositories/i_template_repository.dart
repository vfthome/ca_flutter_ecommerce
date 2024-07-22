import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/entities/template_state_entity.dart';

abstract class ITemplateRepository {
  //* --- CRUD METHODS USING DATASOURCES ---- *//

  Future<TemplateStateEntity> fetchLocalTemplates();
}
