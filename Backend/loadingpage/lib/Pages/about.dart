import 'package:flutter/material.dart';
import 'package:loadingpage/Components/MyCard.dart';
import 'package:loadingpage/Components/MyCardGreen.dart';

// ignore: must_be_immutable
class AboutPage extends StatefulWidget {
  AboutPage({super.key});
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Color(0xFFfafaf9),
        child: Text('data'),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Builder(builder: (context) {
            return IconButton(
              color: Color(0xFF292524),
              icon: const Icon(
                Icons.person_4_rounded,
                size: 40,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          })
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            color: Color(0xFF292524),
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
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
