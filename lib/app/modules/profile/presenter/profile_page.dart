import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfilePage extends StatefulWidget {

  ProfilePage();

  @override
  _ProfilePageState createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage>{

  @override
  Widget build(BuildContext context) {
    
    //final availableHeight = MediaQuery.of(context).size.height 
      //          - (MediaQuery.of(context).padding.top + MediaQuery.of(context).padding.bottom); 
    
    return Scaffold(
      body: Center(child:Text('TEST')),
    ); // Scaffold
  }
}
