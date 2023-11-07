import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:loadingpage/Components/SMHome.dart';
import 'package:loadingpage/Pages/home.dart';

class SDH_Home extends StatelessWidget {
  final GoogleSignInAccount user;
  const SDH_Home({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    print(user);
    return ZoomDrawer(
        angle: 0,
        borderRadius: 40,
        mainScreenScale: 0.1,
        showShadow: true,
        drawerShadowsBackgroundColor: Color.fromARGB(255, 197, 195, 195),
        menuScreen: SMHo_M(),
        mainScreen: HomePage(userdt: user));
  }
}
