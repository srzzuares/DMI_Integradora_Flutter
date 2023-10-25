import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/SMValoracion.dart';
import 'package:loadingpage/Pages/valoracion.dart';

class SDV_Valoracion extends StatelessWidget {
  const SDV_Valoracion({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        angle: 0,
        borderRadius: 40,
        mainScreenScale: 0.1,
        showShadow: true,
        drawerShadowsBackgroundColor: Color.fromARGB(255, 197, 195, 195),
        menuScreen: SMV_Valoracion(),
        mainScreen: ValoracionPage());
  }
}
