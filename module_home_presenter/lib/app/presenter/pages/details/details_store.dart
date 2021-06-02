import 'package:commons/shared/helpers/errors.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:module_home_domain/app/domain/entities/enterprises_entity.dart';

import '../../view_models/enterprise_details_view_model.dart';

class DetailsStore extends NotifierStore<Failure, EnterpriseDetailsVM> {
  DetailsStore() : super(EnterpriseDetailsVM());

  void setPage({
    required EnterpriseEntity enterprise,
    required int page,
  }) {
    execute(() async => state.copyWith(enterprise: enterprise, page: page));
  }
}
