import 'package:flutter/material.dart';
import 'package:loadingpage/Components/Button.dart';
import 'package:loadingpage/Components/LogoLogin.dart';
import 'package:loadingpage/Components/SDHome.dart';
import 'package:loadingpage/Components/TextField.dart';
import 'package:loadingpage/Pages/recovery.dart';
import 'package:loadingpage/Pages/register.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  // void signUserIn() {}

  void signUserRe() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfafaf9),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),

                Image.asset(
                  'assets/icons/1024px.png',
                  width: 250,
                  height: 250,
                ),

                const SizedBox(height: 2),

                Text(
                  'Bienvenido a Guardianes de la Flora',
                  style: TextStyle(
                      color: Color(0xFF292524),
                      fontSize: 16,
                      fontFamily: 'rdl2'),
                ),

                const SizedBox(height: 10),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Usuario/Correo',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Contraseña',
                  obscureText: true,
                ),

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Recordar Contraseña',
                        style: TextStyle(
                            color: Color(0xFF78716c),
                            fontFamily: 'rdl',
                            fontSize: 11),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => RecoveryPage(),
                          ),
                        ),
                        child: Text(
                          '¿Olvido la contraseña?',
                          style: TextStyle(
                              color: Color(0xFF78716c),
                              fontFamily: 'rdl',
                              fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // sign in button
                    Button(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => SDH_Home(),
                          ),
                        );
                      },
                      txt: 'Entrar',
                    ),
                    Button(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => RegisterPage(),
                          ),
                        );
                      },
                      txt: 'Registrar',
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Color(0xFF78716c),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'O continua con',
                          style: TextStyle(
                              color: Color(0xFF292524),
                              fontFamily: 'rdl',
                              fontSize: 12),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Color(0xFF78716c),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    LogoLogin(
                      imagePath: 'assets/images/google.png',
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => SDH_Home(),
                          ),
                        );
                      },
                    ),

                    SizedBox(width: 25),

                    // facebook button
                    LogoLogin(
                      imagePath: 'assets/images/facebook.png',
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => SDH_Home(),
                          ),
                        );
                      },
                    ),

                    SizedBox(width: 25),

                    // Github button
                    LogoLogin(
                      imagePath: 'assets/images/GitHub2000.png',
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => SDH_Home(),
                          ),
                        );
                      },
                    )
                  ],
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
