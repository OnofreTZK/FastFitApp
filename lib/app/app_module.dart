import 'package:fastfit/app/modules/descriptionWorkout/description_workout_module.dart';
import 'package:fastfit/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './modules/login/login_module.dart';
import './modules/register/register_module.dart';
import './modules/profile/profile_module.dart';
import './modules/authentication/login_authentication_module.dart';
import './modules/listaFichas/lista_module.dart';
import 'modules/workout/workout_module.dart';

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
    ModuleRoute(
      '/home',
      module: HomeModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      '/profile',
      module: ProfileModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      '/lista_fichas',
      module: ListaFichaModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      '/workout',
      module: WorkoutModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      '/description-workout',
      module: DescriptionWorkoutModule(),
      transition: TransitionType.fadeIn,
    ),
  ];
}
