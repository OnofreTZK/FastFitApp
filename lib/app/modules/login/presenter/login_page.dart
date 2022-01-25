import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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
            const Image(
              image: AssetImage('assets/images/gym2.jpg'),
              height: 500,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                Modular.to.pushNamed('/register/');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.brown[700], 
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                textStyle: TextStyle(
                  fontSize: 20,
                )
                       
              ),
            ),
          ],
        ),
      ),
    );
  }
}
