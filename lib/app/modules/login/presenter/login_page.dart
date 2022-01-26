import 'package:fastfit/app/modules/login/loginAuthentication_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
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
              child: Column(children:  [
                Image(
                  image: AssetImage('assets/images/gym2.jpg'),
                  fit: BoxFit.fitWidth,
                  height: 500,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Bem vindo ao aplicativo FastFit',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      textStyle: Theme.of(context).textTheme.headline6),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Modular.to.pushNamed('/authentication/');
                },
                child: Text(
                  'Entrar',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 25,
                      textStyle: Theme.of(context).textTheme.headline6),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Modular.to.pushNamed('/register/');
                },
                child: Text(
                  'Registro',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 25,
                      textStyle: Theme.of(context).textTheme.headline6),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
