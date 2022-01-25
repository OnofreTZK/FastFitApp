import 'package:flutter_modular/flutter_modular.dart';
import 'package:fastfit/app/modules/register/presenter/register_bloc.dart';
import 'package:fastfit/app/modules/register/presenter/register_page.dart';

class RegisterModule extends Module {
  @override
  List<Bind> binds = [
    Bind<RegisterBloc>((i) => RegisterBloc()),
  ];

  @override
  List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => RegisterPage()),
  ];
}
