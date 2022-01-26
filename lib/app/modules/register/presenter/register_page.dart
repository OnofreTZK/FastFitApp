import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// Bloc
import 'package:fastfit/app/modules/register/presenter/register_bloc.dart';

class RegisterPage extends StatefulWidget {

  RegisterPage();

  @override
  _RegisterPageState createState() => _RegisterPageState();
}


class _RegisterPageState extends ModularState<RegisterPage, RegisterBloc>{

  @override
  Widget build(BuildContext context) {
    
    //final availableHeight = MediaQuery.of(context).size.height 
      //          - (MediaQuery.of(context).padding.top + MediaQuery.of(context).padding.bottom); 
    
    return Scaffold(
      body: Container(child:Text('TEST')),
    ); // Scaffold
  }
}

