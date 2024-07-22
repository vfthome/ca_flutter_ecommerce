import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/entities/template_state_entity.dart';

abstract class ITemplateLocalDatasource {
  Future<TemplateStateEntity> fetchTemplateData();
}
