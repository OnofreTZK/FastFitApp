import 'package:flutter_modular/flutter_modular.dart';
import './presenter/login_authentication_page.dart';

class LoginAuthenticationModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginAuthenticationPage()),
  ];
}
