import 'package:flutter/foundation.dart';
import 'package:module_home_domain/app/domain/entities/enterprises_entity.dart';


@immutable
class EnterpriseDetailsVM {
  final EnterpriseEntity enterprise;
  final int page;
  EnterpriseDetailsVM({
    this.enterprise = const EnterpriseEntity(),
    this.page = 1,
  });

  EnterpriseDetailsVM copyWith({
    int? page,
    EnterpriseEntity? enterprise,
  }) {
    return EnterpriseDetailsVM(
      page: page ?? this.page,
      enterprise: enterprise ?? this.enterprise,
    );
  }
}
