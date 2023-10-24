import 'package:flutter/material.dart';
import 'package:loadingpage/Components/Button.dart';

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
                      child: Text(
                        'Aqui seran la reglas',
                        style: TextStyle(
                            fontFamily: 'rdl',
                            fontSize: 14,
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
                      onTap: signUserIn,
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
}
