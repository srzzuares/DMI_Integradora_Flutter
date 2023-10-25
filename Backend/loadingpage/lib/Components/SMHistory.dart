import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class SMH_M extends StatelessWidget {
  const SMH_M({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => ZoomDrawer.of(context)!.close(),
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xFFfafaf9),
              ),
            )
          ],
        ),
      ),
    );
  }
}
