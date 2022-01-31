import 'package:fastfit/app/modules/listaFichas/presenter/lista_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListaFichaModule extends Module {
  @override
  List<Bind> binds = [];

  @override
  List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ListaFichas())
  ];
}
