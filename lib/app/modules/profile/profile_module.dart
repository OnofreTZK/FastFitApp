import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/profile_page.dart';

class ProfileModule extends Module {
  @override
  List<Bind> binds = [
    
  ];

  @override
  List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ProfilePage()),
  ];
}