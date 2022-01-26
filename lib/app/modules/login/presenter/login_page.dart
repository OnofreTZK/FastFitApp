import 'package:fastfit/app/modules/login/loginAuthentication_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'login_authentication.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(children: const [
                Image(
                  image: AssetImage('assets/images/gym2.jpg'),
                  fit: BoxFit.fitWidth,
                  height: 500,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text('Bem vindo ao aplicativo FastFit', style: TextStyle(color: Colors.white, fontSize: 25), ),
                ),
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginAuthenticationPage()));
                Modular.to.pushNamed('/authentication/');
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  textStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
            ElevatedButton(
              child: Text('Registro'),
              onPressed: () {
                Modular.to.pushNamed('/register/');
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  textStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
