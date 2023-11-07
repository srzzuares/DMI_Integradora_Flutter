// Creado por:
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart'; // Importa la biblioteca Flutter para construir interfaces de usuario.
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/MyCard.dart';
import 'package:loadingpage/Components/MyCardScore.dart';

class ScoreBoardPage extends StatefulWidget {
  final String Photo;
  const ScoreBoardPage({super.key, required this.Photo});
  @override
  State<ScoreBoardPage> createState() => _ScoreBoardPageState(Photo: Photo);
}

class _ScoreBoardPageState extends State<ScoreBoardPage> {
  final String Photo;

  _ScoreBoardPageState({required this.Photo});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.only(right: 8),
            child: GestureDetector(
              child: CircleAvatar(
                backgroundImage: NetworkImage(Photo),
                radius: 15,
              ),
              onTap: () {
                if (ZoomDrawer.of(context)!.isOpen()) {
                  ZoomDrawer.of(context)!.close();
                } else {
                  ZoomDrawer.of(context)!.open();
                }
              },
            ),
          )
        ],
        leading: IconButton(
          color: Color(0xFF292524),
          icon: const Icon(Icons.menu),
          onPressed: () {
            if (ZoomDrawer.of(context)!.isOpen()) {
              ZoomDrawer.of(context)!.close();
            } else {
              ZoomDrawer.of(context)!.open();
            }
          },
        ),
        centerTitle: true,
        title: Text('Guardianes de la Flora'),
        titleTextStyle: TextStyle(
            color: Color(0xFF292524), fontFamily: 'rdl2', fontSize: 16),
        backgroundColor: Color(0xFFfafaf9),
        elevation: 1,
      ),
      backgroundColor: Color(0xFFfafaf9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'ScoreBoard',
              style: TextStyle(
                  fontFamily: 'rdl2', fontSize: 20, color: Color(0xFF292524)),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: MyCardScore(
                wd: 350,
                hg: 200,
                tittle: 'Mejores Resultadoos',
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, right: 20, left: 20),
              child: MyCard(
                  txt: '---------',
                  wd: 350,
                  hg: 300,
                  tittle: 'Tabla',
                  txtFZ: 14),
            )
          ],
        ),
      ),
    );
  }
}
