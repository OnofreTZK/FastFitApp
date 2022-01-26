import 'package:flutter_modular/flutter_modular.dart';
import './modules/login/login_module.dart';
import './modules/register/register_module.dart';
import './modules/login/loginAuthentication_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute(
        '/authentication', 
        module: LoginAuthenticationModule(),
        transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
        '/register', 
        module: RegisterModule(),
        transition: TransitionType.fadeIn,
    ),
  ];

}
