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
        backgroundColor: Color(0xFF090F13),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Modular.to.pushNamed('/lista_fichas/');
          },
          icon: Icon(Icons.chevron_left_rounded),
          iconSize: 32,
          color: Colors.white,
        ),
        title: Text(
          'Segunda',
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 164,
                      decoration: BoxDecoration(
                          color: Color(0xFF090F13),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.asset('assets/images/poli.jpg').image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x65090F13),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Polichinelo',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 30,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline6),
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right_outlined,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '30m | Alta intensidade | Cardio',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 14,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: TextButton(
                                        onPressed: () {
                                          Modular.to.pushNamed(
                                              '/description-workout/');
                                        },
                                        child: Text(
                                          'Mais informações',
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 13,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline6),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  //segundo exercicio
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 164,
                      decoration: BoxDecoration(
                          color: Color(0xFF090F13),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.asset('assets/images/rosca.jpg').image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x65090F13),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Rosca 21',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 30,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline6),
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right_outlined,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '10m | Média intensidade ',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 14,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: Colors.white70,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: TextButton(
                                          onPressed: () {
                                            Modular.to.pushNamed(
                                                '/description-workout/');
                                          },
                                          child: Text(
                                            'Mais informações',
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 13,
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //terceiro exercicio
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 164,
                      decoration: BoxDecoration(
                          color: Color(0xFF090F13),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.asset('assets/images/agachamento.jpg').image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x65090F13),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Agachamento',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 30,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline6),
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right_outlined,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '15m | Alta intensidade ',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 14,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: Colors.white70,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: TextButton(
                                          onPressed: () {
                                            Modular.to.pushNamed(
                                                '/description-workout/');
                                          },
                                          child: Text(
                                            'Mais informações',
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 13,
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
