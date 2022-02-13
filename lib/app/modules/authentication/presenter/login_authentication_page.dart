import 'package:fastfit/app/modules/home/presenter/home_page.dart';
import 'package:flutter/material.dart';

class LoginAuthenticationPage extends StatefulWidget {
  final String title;
  const LoginAuthenticationPage({Key? key, this.title = "Login Authentication"})
      : super(key: key);

  @override
  _LoginAuthenticationPageState createState() =>
      _LoginAuthenticationPageState();
}

class _LoginAuthenticationPageState extends State<LoginAuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Container(
                    width: 300,
                    height: 340,
                    decoration: BoxDecoration(
                        //bordar ao redor da imagem
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Image.asset('assets/images/gym2.jpg', height: 500)),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 25, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Usuário',
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Entre com um usuário válido'), // InputDecoration
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ), // TextStyle
                textInputAction: TextInputAction.next,
              ), // TextField
            ), // Padding
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText:
                    true, // In the future will controlled by the controller
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Senha',
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Digite sua senha',
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility,
                          size: 30,
                          color: Colors.white,
                        )//Icon
                      )//IconButton
                    ), // InputDecoration,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ), // TextStyle
                textInputAction: TextInputAction.done,
              ), // TextField
            ), // Padding
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Esqueci a senha',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ), // Container
            SizedBox(
              height: 50,
            ),
            Text('Novo Usuário? Crie sua conta!'),
          ],
        ),
      ),
    );
  }
}
