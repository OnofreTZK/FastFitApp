import 'package:fastfit/app/modules/descriptionWorkout/presenter/description_workout_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DescriptionWorkoutModule extends Module {
  @override
  List<Bind> binds = [];

  @override
  List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => DescriptionWorkoutPage()),
  ];
}
