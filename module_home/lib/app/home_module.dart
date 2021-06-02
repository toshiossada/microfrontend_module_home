import 'package:flutter_modular/flutter_modular.dart';
import 'package:module_home_domain/module_home_domain.dart';
import 'package:module_home_infra/app/infra/data/repositories/authenticate_repository.dart';
import 'package:module_home_infra/app/infra/data/repositories/enterprise_repository.dart';
import 'package:module_home_infra/app/infra/external/datasources/enterprise_datasource.dart';
import 'package:module_home_presenter/module_home_presenter.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => DetailsController(
          i(),
          i(),
          enterprise: i.args!.data,
        )),
    Bind.lazySingleton((i) => HomeController(i(), i(), i(), i())),
    Bind.lazySingleton<ILogOut>((i) => LogOut(i())),
    Bind.lazySingleton<IAuthenticateRepository>(
        (i) => AuthenticateRepository(i())),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => DetailsStore()),
    Bind.lazySingleton((i) => EnterpriseDatasource(i())),
    Bind.lazySingleton((i) => EnterpriseRepository(i())),
    Bind.lazySingleton((i) => GetAllEnterprise(i())),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
    ChildRoute('enterprise/:id', child: (_, args) => DetailsPage()),
  ];
}
