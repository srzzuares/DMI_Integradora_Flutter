import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/SMHome.dart';
import 'package:loadingpage/Pages/userProfileSet.dart';

class SDUP_UserProfileSettings extends StatelessWidget {
  const SDUP_UserProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        angle: 0,
        borderRadius: 40,
        mainScreenScale: 0.1,
        showShadow: true,
        drawerShadowsBackgroundColor: Color.fromARGB(255, 197, 195, 195),
        menuScreen: SMHo_M(),
        mainScreen: userProfileSettigs());
  }
}