import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.black,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                      child: Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/profilepic.png',
                        ),
                      ),
                    ),
                  ),
                  //LOGO DO APP
                  /*Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Image.asset(
                      'assets/images/logofastfit.png',
                      width: 120,
                      height: 40,
                      fit: BoxFit.fitWidth,
                    ),
                  )*/
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Text(
                      'Bem vindo',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 50),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                    child: Text(
                      'Usuário',
                      style:
                          GoogleFonts.poppins(color: Colors.grey, fontSize: 35),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 60, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[600],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () async {
                              Modular.to.pushNamed('/lista_fichas/');
                              await showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: Container(
                                        height: 720,
                                        //child: COLOCAR QUAL WIDGET VAI SER ENCAMINHADO
                                      ),
                                    );
                                  });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Icon(
                                    Icons.fitness_center_outlined,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 22, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TREINOS',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 30,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline6),
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
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[600],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () async {
                              Modular.to.pushNamed('/profile/');
                              await showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: Container(
                                        height: 720,
                                        //child: COLOCAR QUAL WIDGET VAI SER ENCAMINHADO
                                      ),
                                    );
                                  });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Icon(
                                    Icons.account_circle_outlined,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 22, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'PERFIL',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 30,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline6),
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
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[600],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: Container(
                                        height: 720,
                                        //child: COLOCAR QUAL WIDGET VAI SER ENCAMINHADO
                                      ),
                                    );
                                  });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Icon(
                                    Icons.question_answer_outlined,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 22, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'CHAT',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 30,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline6),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
