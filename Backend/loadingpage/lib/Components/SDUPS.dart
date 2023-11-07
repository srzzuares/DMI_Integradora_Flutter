import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/SMHome.dart';
import 'package:loadingpage/Pages/userProfileSet.dart';

class SDUP_UserProfileSettings extends StatelessWidget {
  final String userName;
  final String Photo;
  final String correo;
  SDUP_UserProfileSettings(
      {super.key,
      required this.userName,
      required this.Photo,
      required this.correo});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        angle: 0,
        borderRadius: 40,
        mainScreenScale: 0.1,
        showShadow: true,
        drawerShadowsBackgroundColor: Color.fromARGB(255, 197, 195, 195),
        menuScreen: SMHo_M(
          userName: userName,
          correo: correo,
          Photo: Photo,
        ),
        mainScreen: userProfileSettigs(
          Photo: Photo,
        ));
  }
}
