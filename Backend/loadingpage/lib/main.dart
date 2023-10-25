// Creado por:
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart';
import 'package:loadingpage/Pages/about.dart';
// import 'package:loadingpage/Pages/codeVerification.dart';
// import 'package:loadingpage/Pages/history.dart';
// import 'package:loadingpage/Pages/recovery.dart';
// import 'package:loadingpage/Pages/condition.dart';
// import 'package:loadingpage/Pages/register.dart';
// import 'package:loadingpage/Pages/home.dart'; // Importa el archivo home.dart
import 'package:loadingpage/Pages/splash_screen.dart'; // Importa el archivo splash_screen.dart

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(), // Inicia con la pantalla de splash
    theme: ThemeData.dark(),
  ));

  // Agregar un Future.delayed para esperar un tiempo antes de navegar a la pantalla principal
  Future.delayed(Duration(seconds: 25), () {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      // home: RegisterPage(),
      // home: RecoveryPage(),
      // home: HistoryPage(),
      home: AboutPage(),
      theme: ThemeData.dark(),
    ));
  });
}
