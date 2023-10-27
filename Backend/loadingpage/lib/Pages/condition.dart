import 'package:flutter/material.dart';
import 'package:loadingpage/Components/Button.dart';
import 'package:loadingpage/Components/SDHome.dart';

// ignore: must_be_immutable
class ConditionPage extends StatefulWidget {
  ConditionPage({super.key});
  @override
  _ConditionPageState createState() => _ConditionPageState();
}

class _ConditionPageState extends State<ConditionPage> {
  bool isChecked = false;

  // sign user in method
  void signUserIn() {
    isChecked ? 'printMessage' : 'null';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Guardianes de la Flora'),
        titleTextStyle: TextStyle(
            color: Color(0xFF292524), fontFamily: 'rdl2', fontSize: 16),
        backgroundColor: Color(0xFFfafaf9),
        elevation: 1,
      ),
      backgroundColor: Color(0xFFfafaf9),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              elevation: 5,
              shadowColor: Color(0xFFE0E2E5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(30),
              color: Color(0xFFF5F5F4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Términos y\n Condiciones',
                        style: TextStyle(
                            color: Color(0xFF292524),
                            fontSize: 16,
                            fontFamily: 'rdl2'),
                      ),
                      SizedBox(width: 25),
                      Image.asset(
                        'assets/icons/1024px.png',
                        width: 110,
                        height: 110,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        TxtCond,
                        style: TextStyle(
                            fontFamily: 'rdl',
                            fontSize: 11,
                            color: Color(0xFF292524)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData().copyWith(
                              unselectedWidgetColor: Color(0xFF292524)),
                          child: Checkbox(
                              value: isChecked,
                              activeColor: Color(0xFF292524),
                              tristate: true,
                              onChanged: (sss) {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              }),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            },
                            child: Text(
                              'Leí y Acepto los Términos y Condiciones',
                              style: TextStyle(
                                  fontFamily: 'rdl',
                                  fontSize: 12,
                                  color: Color(0xFF78716C)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Button(
                      onTap: () {
                        if (isChecked) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (BuildContext context) => SDH_Home(),
                            ),
                          );
                        }
                      },
                      txt: 'Comenzar',
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String TxtCond =
      "Términos y Condiciones del Juego \"Guardianes de la Flora\" \n\nEstos Términos y Condiciones (\"T&C\") rigen el uso de \"Guardianes de la Flora\" (el \"Juego\"), desarrollado y proporcionado por TechSolutions (\"Nosotros\", \"Nuestro\" o \"Nos\"). Al acceder y utilizar el Juego, aceptas cumplir con estos T&C en su totalidad. Si no estás de acuerdo con alguno de los términos, no debes utilizar el Juego. \n\n1. Licencia de Uso \n\n1.1. Condiciones de Uso. Te otorgamos una licencia limitada, no exclusiva y no transferible para acceder y utilizar el Juego de acuerdo con estos T&C.\n\n1.2. Restricciones. No puedes:   a. Copiar, modificar, distribuir, vender o sublicenciar el Juego.   b. Utilizar el Juego de manera ilegal o para cualquier propósito no autorizado   c. Intentar acceder o modificar partes del Juego a las que no tienes acceso.\n\n2. Derechos de Propiedad Intelectual\n\n2.1. Propiedad. Todos los derechos de propiedad intelectual relacionados con el Juego, incluyendo, pero no limitado a, derechos de autor, marcas registradas y patentes, son propiedad de TechSolutions o de sus licenciantes.\n\n2.2. Contenido del Usuario. Cualquier contenido generado por el usuario (\"Contenido del Usuario\") que se cree o comparta a través del Juego sigue siendo propiedad de quien lo creó, pero al cargarlo en el Juego, otorgas a TechSolutions una licencia no exclusiva para utilizar, mostrar y distribuir ese Contenido del Usuario en relación con el Juego.\n\n3. Privacidad\n\n3.1. Privacidad. Al utilizar el Juego, aceptas nuestra Política de Privacidad, que describe cómo recopilamos, utilizamos y compartimos tus datos personales.\n\n4. Cambios en los T&C\n\nNos reservamos el derecho de modificar estos T&C en cualquier momento. Las modificaciones serán efectivas cuando se publiquen en el Juego. Te recomendamos revisar periódicamente estos T&C.\n\n5. Terminación\n\nPodemos, a nuestra discreción, terminar tu acceso al Juego en cualquier momento y por cualquier razón, incluyendo el incumplimiento de estos T&C.\n\n6. Ley Aplicable\n\nEstos T&C se rigen por las leyes de México y cualquier disputa que surja en relación con estos T&C estará sujeta a la jurisdicción exclusiva de los tribunales de Xicotepec.\n\n7. Contacto\n\nSi tienes alguna pregunta o inquietud sobre estos T&C, contáctanos a través de techsolutions@utxicotpec.com\n";
}
