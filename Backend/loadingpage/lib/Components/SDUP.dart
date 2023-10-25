import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/SMUP.dart';
import 'package:loadingpage/Pages/userProfile.dart';

class SDUP_UserProfile extends StatelessWidget {
  const SDUP_UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        angle: 0,
        borderRadius: 40,
        mainScreenScale: 0.1,
        showShadow: true,
        drawerShadowsBackgroundColor: Color.fromARGB(255, 197, 195, 195),
        menuScreen: SMU_UserProfile(),
        mainScreen: userProfilePage());
  }
}
