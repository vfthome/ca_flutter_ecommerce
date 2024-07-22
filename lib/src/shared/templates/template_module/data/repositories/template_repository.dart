import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/datasources/i_template_local_datasource.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/entities/template_state_entity.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/repositories/i_template_repository.dart';

class TemplateRepository implements ITemplateRepository {
  final ITemplateLocalDatasource _localDatasource;

  TemplateRepository({
    required ITemplateLocalDatasource localDatasource,
  }) : _localDatasource = localDatasource;

  @override
  Future<TemplateStateEntity> fetchLocalTemplates() {
    return _localDatasource.fetchTemplateData();
  }
}
