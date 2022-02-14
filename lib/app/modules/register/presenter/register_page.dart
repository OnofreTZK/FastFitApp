import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// Bloc
import 'package:fastfit/app/modules/register/presenter/register_bloc.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage();

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends ModularState<RegisterPage, RegisterBloc> {
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
                    height: 200,
                    decoration: BoxDecoration(
                        //bordar ao redor da imagem
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.circular(30.0)), //BoxDecoration
                    child: Image.asset('assets/images/gym2.jpg',
                        height: 500)), //Container
              ), //Center
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 15,
                  bottom: 0), //EdgeInsets.only
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ), //OutlineInputBorder
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Nome',
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Entre com seu nome completo'), //InputDecoration
                style: TextStyle(
                  color: Colors.white,
                ), //TextStyle
              ), //TextField
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 15,
                  bottom: 0), //EdgeInsets.only
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ), //OutlineInputBorder
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Usuário',
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Entre com um nome de usuário'), //InputDecoration
                style: TextStyle(
                  color: Colors.white,
                ), //TextStyle
              ), //TextField
            ), //Padding
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 15,
                  bottom: 0), //EdgeInsets.only
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ), //OutlineInputBorder
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'E-mail',
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Entre com um e-mail válido'), //InputDecoration
                style: TextStyle(
                  color: Colors.white,
                ), //TextStyle
              ), //TextField
            ), // Padding
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 15,
                  bottom: 0), //EdgeInsets.only
              //padding: EdgeInsets.symmetric(horizontal: 15),

              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ), //OutlineInputBorder
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
                        ) //Icon
                        ) //IconButton
                    ), //InputDecoration
                style: TextStyle(
                  color: Colors.white,
                ), //TextStyle
              ), //TextField
            ), //Padding
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 15,
                  bottom: 0), //EdgeInsets.only
              //padding: EdgeInsets.symmetric(horizontal: 15),

              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ), //OutlineInputBorder
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Confirme sua senha',
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Digite sua senha',
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility,
                          size: 30,
                          color: Colors.white,
                        ) //Icon
                        ) //IconButton
                    ), // InputDecoration
                style: TextStyle(
                  color: Colors.white,
                ), //TextStyle
              ), // TextField
            ), // Padding
            SizedBox(
              height: 20,
            ), // SizedBox
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)), //BoxDecoration
              child: TextButton(
                onPressed: () {
                  Modular.to.pushNamed('/authentication/');
                },
                child: Text(
                  'Inscreva-se',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ), // Text
              ), //TextButton
            ), //Container
            SizedBox(
              height: 50,
            ),
            Text('Novo Usuário? Crie sua conta')
          ], // Widget[]
        ), // Column
      ), //SingleChildScrollView
    ); //Scaffold
  }
}
