// Creado por:
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart'; // Importa la biblioteca Flutter para construir interfaces de usuario.
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ValoracionPage extends StatefulWidget {
  final String Photo;
  const ValoracionPage({super.key, required this.Photo});
  @override
  State<ValoracionPage> createState() => _ValoracionPageState(Photo: Photo);
}

class _ValoracionPageState extends State<ValoracionPage> {
  final String Photo;

  _ValoracionPageState({required this.Photo});
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
              'Avances para la \n proxima semana...\Valoracion',
              style: TextStyle(
                  fontFamily: 'rdl', fontSize: 30, color: Color(0xFF292524)),
            )
          ],
        ),
      ),
    );
  }
}
