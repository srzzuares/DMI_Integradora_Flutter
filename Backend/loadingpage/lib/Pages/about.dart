import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/MyCard.dart';
import 'package:loadingpage/Components/MyCardGreen.dart';

// ignore: must_be_immutable
class AboutPage extends StatefulWidget {
  final String Photo;
  AboutPage({super.key, required this.Photo});
  @override
  _AboutPageState createState() => _AboutPageState(Photo: Photo);
}

class _AboutPageState extends State<AboutPage> {
  final String Photo;

  _AboutPageState({required this.Photo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
            child: Column(
              children: [
                MyCardGreen(
                  tittle: 'Acerca de Nosotros...',
                  hg: 210,
                  wd: 500,
                  img: 'assets/icons/IconEG.png',
                  wdimg: 150,
                  hgimg: 150,
                ),
                const SizedBox(height: 20),
                MyCard(
                  tittle: '¿Quiénes Somos?',
                  wd: 400,
                  hg: 160,
                  txtFZ: 12,
                  txt:
                      'Somos un equipo de desarrollo de software creado para pasar la materia',
                ),
                const SizedBox(height: 20),
                MyCard(
                  tittle: 'Integrantes',
                  wd: 400,
                  hg: 220,
                  txtFZ: 11,
                  txt:
                      'Integrante 1: Crystian Enrique Suarez Cuevas \nIntegrante 2: Daniela AlvareZ Ramirez \nIntegrante 3: Marco Antonio Rosas GonzaleZ \nIntegrante 4: Alfredo Solís Sanchez',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
