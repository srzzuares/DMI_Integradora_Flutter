import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/SMScore.dart';
import 'package:loadingpage/Pages/scoreBoard.dart';

class SDS_Score extends StatelessWidget {
  const SDS_Score({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        angle: 0,
        borderRadius: 40,
        mainScreenScale: 0.1,
        showShadow: true,
        drawerShadowsBackgroundColor: Color.fromARGB(255, 197, 195, 195),
        menuScreen: SMS_Score(),
        mainScreen: ScoreBoardPage());
  }
}
