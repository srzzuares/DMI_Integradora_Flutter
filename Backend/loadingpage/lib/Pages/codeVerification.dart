import 'package:flutter/material.dart';
import 'package:loadingpage/Components/Button.dart';
import 'package:loadingpage/Components/TextField.dart';
import 'package:loadingpage/Pages/login.dart';

// ignore: must_be_immutable
class CodeVerifyPage extends StatefulWidget {
  CodeVerifyPage({super.key});
  @override
  _CodeVerifyPageState createState() => _CodeVerifyPageState();
}

class _CodeVerifyPageState extends State<CodeVerifyPage> {
  final codeController = TextEditingController();

  // sign user in method
  void confirmatedCount() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfafaf9),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 30, right: 30, top: 110, bottom: 50),
                  child: Card(
                    elevation: 5,
                    shadowColor: Color(0xFFE0E2E5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Color(0xFFF5F5F4),
                    child: Column(
                      children: [
                        const SizedBox(height: 130),
                        Text(
                          'Código de Verificación',
                          style: TextStyle(
                              color: Color(0xFF292524),
                              fontSize: 16,
                              fontFamily: 'rdl2'),
                        ),
                        const SizedBox(height: 10),
                        MyTextField(
                          controller: codeController,
                          hintText: 'Código',
                          obscureText: false,
                        ),
                        const SizedBox(height: 15),
                        Container(
                          child: Center(
                            child: Button(
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginPage(),
                                ));
                              },
                              txt: 'Entrar',
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Container(
                          padding: EdgeInsets.only(left: 20, bottom: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginPage(),
                                  ));
                                },
                                child: Text(
                                  'Iniciar Sesión',
                                  style: TextStyle(
                                      fontFamily: 'rdl',
                                      fontSize: 14,
                                      color: Color(0xFF78716C)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Positioned(
                    left: 75,
                    bottom: 275,
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/icons/1024px.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
