// Creado por:
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
// import 'package:loadingpage/Components/SDAbout.dart';
// import 'package:loadingpage/Components/SDHistory.dart';
// import 'package:loadingpage/Components/SDHome.dart';
// import 'package:loadingpage/Components/SDScore.dart';
// import 'package:loadingpage/Components/SDUP.dart';
// import 'package:loadingpage/Components/SDUPS.dart';
// import 'package:loadingpage/Components/SDValoracion.dart';
// import 'package:loadingpage/Pages/codeVerification.dart';
// import 'package:loadingpage/Pages/condition.dart';
// import 'package:loadingpage/Pages/recovery.dart';
// import 'package:loadingpage/Pages/register.dart';
import 'package:flutter/material.dart';
import 'package:loadingpage/Pages/login.dart';
import 'package:loadingpage/Pages/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    theme: ThemeData.dark(),
    // routes: {
    //   "Home": (BuildContext context) => SDH_Home(),
    //   'About': (context) => SDA_About(),
    //   'UserProfile': (context) => SDUP_UserProfile(),
    //   'Login': (context) => LoginPage(),
    //   'Recovery': (context) => RecoveryPage(),
    //   'Condition': (context) => ConditionPage(),
    //   'CodeVerification': (context) => CodeVerifyPage(),
    //   'History': (context) => SDH_History(),
    //   '/Register': (BuildContext context) => RegisterPage(),
    //   'ScoreBoard': (context) => SDS_Score(),
    //   'Valoration': (context) => SDV_Valoracion(),
    //   'UserProfileSet': (context) => SDUP_UserProfileSettings(),
    // },
  ));

  // Agregar un Future.delayed para esperar un tiempo antes de navegar a la pantalla principal
  Future.delayed(Duration(seconds: 25), () {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData.dark(),
    ));
  });
}
