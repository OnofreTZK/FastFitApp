import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage();

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF090F13),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Modular.to.pushNamed('/home/');
          },
          icon: Icon(Icons.chevron_left_rounded),
          iconSize: 32,
          color: Colors.white,
        ),
        title: Text(
          'Dados Pessoais',
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
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFF262D34),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.blueGrey[400],
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 2, 2, 2),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      //imagem da foto do profile
                                      //child: Image.asset(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      /*Container(
                                        width: 44,
                                        height: 44,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 2,
                                          ),
                                        ),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.edit_outlined,
                                            color: Colors.red,
                                            size: 24,
                                          ),
                                          onPressed: () async {
                                            //rota para ediçao do profile
                                            //await Modular.to.pushNamed('//');
                                          },
                                        ),
                                      ), */
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                        child: Container(
                                          width: 44,
                                          height: 44,
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: Colors.grey.shade500,
                                              width: 2,
                                            ),
                                          ),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.logout_outlined,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              //rota para tela de login e registro
                                               Modular.to.pushNamed('/authentication/');
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '[display_name]',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 30,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Text(
                                    '[age]',
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .subtitle2),
                                  ),
                                )
                              ],
                            ),
                          ),
                          /*Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  '[e-mail]',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue,
                                      fontSize: 15,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .subtitle2),
                                ),
                              )
                            ],
                          )*/
                        ],
                      ),
                    ))
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Seu nome',
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 15,
                          textStyle: Theme.of(context).textTheme.subtitle2),
                      hintText: 'Insira seu nome completo',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 15,
                          textStyle: Theme.of(context).textTheme.subtitle2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.black,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
                    ),
                    style: GoogleFonts.poppins(
                        color: Colors.grey[400],
                        fontSize: 15,
                        textStyle: Theme.of(context).textTheme.subtitle2),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: TextFormField(
                    //controller: yourEmailController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 15,
                          textStyle: Theme.of(context).textTheme.subtitle2),
                      hintText: 'Insira seu e-mail',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 15,
                          textStyle: Theme.of(context).textTheme.subtitle2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.black,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
                    ),
                    style: GoogleFonts.poppins(
                        color: Colors.grey[400],
                        fontSize: 15,
                        textStyle: Theme.of(context).textTheme.subtitle2),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: TextFormField(
                    //controller: yourAgeController ??= TextEditingController(
                    //  text: editProfileUsersRecord.age.toString(),
                    // ),
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Idade',
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 15,
                          textStyle: Theme.of(context).textTheme.subtitle2),
                      hintText: 'Insira sua idade',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 15,
                          textStyle: Theme.of(context).textTheme.subtitle2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.black,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
                    ),
                    style: GoogleFonts.poppins(
                        color: Colors.grey[400],
                        fontSize: 15,
                        textStyle: Theme.of(context).textTheme.subtitle2),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: TextFormField(
                    //controller: yourAgeController ??= TextEditingController(
                    //  text: editProfileUsersRecord.age.toString(),
                    // ),
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Peso',
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 15,
                          textStyle: Theme.of(context).textTheme.subtitle2),
                      hintText: 'Insira seu peso',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 15,
                          textStyle: Theme.of(context).textTheme.subtitle2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.black,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
                    ),
                    style: GoogleFonts.poppins(
                        color: Colors.grey[400],
                        fontSize: 15,
                        textStyle: Theme.of(context).textTheme.subtitle2),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {
                        /*final usersUpdateData = createUsersRecordData(
                          displayName: yourNameController?.text ?? '',
                          email: yourEmailController.text,
                          age: int.parse(yourAgeController?.text ?? ''),
                          ailments: yourAilmentsController?.text ?? '',
                          userSex: editProfileUsersRecord.userSex,
                          );
                          await editProfileUsersRecord.reference.update(usersUpdateData);
                          Navigator.pop(context); */
                        //Modular.to.pushNamed('//');
                      },
                      child: Text(
                        'Salvar mudanças',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            textStyle: Theme.of(context).textTheme.headline6),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
