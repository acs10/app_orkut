import 'package:flutter_modular/flutter_modular.dart';

import 'modules/authentication/authentication_module.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AuthenticationModule()),
    // ModuleRoute('/authentication', module: AuthenticationModule()),
  ];
}
