// Creado por:
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart'; // Importa la biblioteca Flutter para construir interfaces de usuario.
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/MyCard.dart';

class HomePage extends StatefulWidget {
  final String Photo;
  HomePage({super.key, required this.Photo});
  @override
  State<HomePage> createState() => _HomePageState(Photo: Photo);
}

class _HomePageState extends State<HomePage> {
  final String Photo;

  _HomePageState({required this.Photo});
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                'LeaderBoard',
                style: TextStyle(
                    fontFamily: 'rdl2', fontSize: 20, color: Color(0xFF292524)),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/trofeo.png',
                    width: 200, height: 200),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: MyCard(
                  wd: 400,
                  hg: 400,
                  tittle: 'Tabla',
                  txt: '-----',
                  txtFZ: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
