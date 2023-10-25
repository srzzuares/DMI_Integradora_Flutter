import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/SMHistory.dart';
import 'package:loadingpage/Pages/history.dart';

class SDH_History extends StatelessWidget {
  const SDH_History({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        angle: 0,
        borderRadius: 40,
        mainScreenScale: 0.1,
        showShadow: true,
        drawerShadowsBackgroundColor: Color.fromARGB(255, 197, 195, 195),
        menuScreen: SMH_M(),
        mainScreen: HistoryPage());
  }
}
