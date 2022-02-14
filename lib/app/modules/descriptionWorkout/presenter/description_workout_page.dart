import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionWorkoutPage extends StatefulWidget {
  DescriptionWorkoutPage();

  @override
  _DescriptionWorkoutPageState createState() => _DescriptionWorkoutPageState();
}

class _DescriptionWorkoutPageState extends State<DescriptionWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF090F13),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Modular.to.pushNamed('/workout/');
          },
          icon: Icon(Icons.chevron_left_rounded),
          iconSize: 32,
          color: Colors.white,
        ),
        title: Text(
          'Descrição',
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 22,
              textStyle: Theme.of(context).textTheme.headline6),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF262D34),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/gym2.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Exercício 1',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 22,
                          textStyle: Theme.of(context).textTheme.headline6),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          textStyle: Theme.of(context).textTheme.headline6),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      '30m | Alta Intensidade | Cardio',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          textStyle: Theme.of(context).textTheme.headline6),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
