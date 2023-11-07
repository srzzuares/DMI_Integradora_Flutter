import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/MyCard.dart';

// ignore: must_be_immutable
class HistoryPage extends StatefulWidget {
  final String Photo;
  HistoryPage({super.key, required this.Photo});
  @override
  _HistoryPageState createState() => _HistoryPageState(Photo: Photo);
}

class _HistoryPageState extends State<HistoryPage> {
  final String Photo;

  _HistoryPageState({required this.Photo});
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
                MyCard(
                  tittle: 'Historia',
                  txt: history,
                  txtFZ: 10,
                  hg: 1300,
                  wd: 500,
                ),
                const SizedBox(height: 20),
                MyCard(
                  tittle: 'Descripción',
                  txt: descripction,
                  txtFZ: 10,
                  hg: 450,
                  wd: 500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String history =
      'En un tranquilo pueblo llamado Verdantia, el jugador comienza su aventura en "Guardianes de la Flora". Como regalo de bienvenida al juego, el personaje principal recibe una hermosa suculenta que decide colocar en su mini invernadero. Este invernadero, un lugar especial para cultivar y cuidar plantas, es un regalo de su abuela que le enseñó el amor por la naturaleza. \n Un día, al revisar su planta suculenta, el jugador se da cuenta de que está siendo atacada por plagas de gusanos y hormigas. Desesperado por salvar su planta, decide buscar ayuda y llama a un experto en cuidado de plantas, conocido como "Verdehéroe", quien aparece mágicamente en su invernadero. El Verdehéroe, un ser misterioso con poderes mágicos relacionados con la naturaleza, se convierte en el compañero y protector de las plantas del jugador.\n Juntos, el jugador y el Verdehéroe se embarcan en una emocionante aventura para proteger las plantas de Verdantia de las amenazas que acechan. El pueblo esconde secretos mágicos, y a medida que avanzan en la historia, descubren que una malvada bruja llamada Thorna está tratando de robar la esencia vital de las plantas para sus oscuros propósitos. \n A lo largo del juego, el jugador aprenderá a cuidar diferentes tipos de plantas, desbloqueando habilidades y poderes mágicos para combatir a las plagas y sanar las heridas de las plantas dañadas. También se encontrarán con personajes excéntricos y mágicos, cada uno con su propia historia y desafíos que superar.\n El objetivo principal es proteger la suculenta original del jugador, que representa la última esperanza de detener a Thorna y restaurar el equilibrio en Verdantia. Con el tiempo, el jugador y el Verdehéroe descubrirán la verdadera conexión entre las plantas, la magia y la vida en el pueblo.\n "Guardianes de la Flora" es un juego que combina elementos de simulación de jardinería, estrategia y aventura, brindando a los jugadores una experiencia única mientras cuidan y protegen su jardín mágico contra las fuerzas oscuras que amenazan la naturaleza.\n';
  String descripction =
      '"Guardianes de la Flora" es un juego de simulación y estrategia ambientado en el tranquilo pueblo de Verdantia, donde los jugadores asumen el papel de un amante de la naturaleza que debe proteger su jardín mágico de las plagas y la malvada bruja Thorna. Con la ayuda del misterioso Verdehéroe y una variedad de plantas mágicas, los jugadores desbloquean habilidades y poderes para sanar y defender su jardín mientras descubren los secretos mágicos del pueblo. El objetivo final es detener a Thorna y restaurar el equilibrio en Verdantia, explorando una emocionante mezcla de cuidado de plantas, estrategia y aventura en el proceso.';
}
