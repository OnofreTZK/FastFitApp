import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListaFichas extends StatefulWidget {
  ListaFichas();

  @override
  _ListaFichasState createState() => _ListaFichasState();
}

class _ListaFichasState extends State<ListaFichas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('FICHAS')),
    );
  }
}
