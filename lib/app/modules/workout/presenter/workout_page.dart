import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutPage extends StatefulWidget {
  WorkoutPage();

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        automaticallyImplyLeading: false,
        title: Text(
          'Treino X',
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 30,
              textStyle: Theme.of(context).textTheme.headline6),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey[900],
      floatingActionButton: Visibility(
        //visible: eventsPageGuestsRecord.admin ?? true,
        child: FloatingActionButton(
          onPressed: () async {},
          backgroundColor: Colors.white,
          elevation: 8,
          child: Icon(
            Icons.play_arrow,
            color: Colors.black,
            size: 32,
          ),
        ),
      ),
    );
  }
}
