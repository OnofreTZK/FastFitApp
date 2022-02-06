import 'package:fastfit/app/modules/workout/presenter/workout_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WorkoutModule extends Module {
  @override
  List<Bind> binds = [];

  @override
  List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => WorkoutPage()),
  ];
}
