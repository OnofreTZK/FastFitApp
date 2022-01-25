import 'package:fastfit/app/modules/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: ElevatedButton(
        child: Text('FlatButton Ativo'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.brown[700],
        ),
      ),
    );
  }
}
