// Creado por:
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart'; // Importa la biblioteca Flutter para construir interfaces de usuario.
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class userProfilePage extends StatefulWidget {
  final String Photo;
  const userProfilePage({super.key, required this.Photo});
  @override
  State<userProfilePage> createState() => _userProfilePageState(Photo: Photo);
}

class _userProfilePageState extends State<userProfilePage> {
  final String Photo;

  _userProfilePageState({required this.Photo});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Avances para la \n proxima semana...\nUserProfilePage',
              style: TextStyle(
                  fontFamily: 'rdl', fontSize: 30, color: Color(0xFF292524)),
            )
          ],
        ),
      ),
    );
  }
}
