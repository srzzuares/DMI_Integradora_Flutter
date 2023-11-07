import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:loadingpage/Components/SMHome.dart';
import 'package:loadingpage/Pages/home.dart';

class SDH_Home1 extends StatelessWidget {
  final String name;
  final String email;
  final String photo;
  const SDH_Home1(
      {super.key,
      required this.name,
      required this.email,
      required this.photo});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        angle: 0,
        borderRadius: 40,
        mainScreenScale: 0.1,
        showShadow: true,
        drawerShadowsBackgroundColor: Color.fromARGB(255, 197, 195, 195),
        menuScreen: SMHo_M(userName: name, correo: email, Photo: photo),
        mainScreen: HomePage(
          Photo: photo,
        ));
  }
}
