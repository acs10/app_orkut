import 'package:app_orkut/app/modules/authentication/authentication_Page.dart';
import 'package:app_orkut/app/modules/authentication/controllers/authentication_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthenticationModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthenticationStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => AuthenticationPage()),
  ];
}
