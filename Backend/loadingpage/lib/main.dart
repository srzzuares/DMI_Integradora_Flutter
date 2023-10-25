// Creado por:
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart';
import 'package:loadingpage/Components/SDValoracion.dart';
import 'package:loadingpage/Pages/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    theme: ThemeData.dark(),
  ));

  // Agregar un Future.delayed para esperar un tiempo antes de navegar a la pantalla principal
  Future.delayed(Duration(seconds: 25), () {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SDV_Valoracion(),
      theme: ThemeData.dark(),
    ));
  });
}
