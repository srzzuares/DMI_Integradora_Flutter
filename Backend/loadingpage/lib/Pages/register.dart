import 'package:flutter/material.dart';
import 'package:loadingpage/Components/Button.dart';
import 'package:loadingpage/Components/LogoLogin.dart';
import 'package:loadingpage/Components/TextField.dart';
import 'package:loadingpage/Pages/condition.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers
  final nameCompletController = TextEditingController();
  final dateBornController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmedController = TextEditingController();

  // sign user in method
  void signUserIn() {}

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
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => ConditionPage(),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                // logo
                Image.asset(
                  'assets/icons/1024px.png', // Ruta de la imagen del carro
                  width: 150, // Ancho de la imagen del carro
                  height: 150, // Altura de la imagen del carro
                ),
                Text(
                  'Registrate a Guardianes de la Flora',
                  style: TextStyle(
                      color: Color(0xFF292524),
                      fontSize: 16,
                      fontFamily: 'rdl2'),
                ),

                const SizedBox(height: 10),

                // username textfield
                MyTextField(
                  controller: nameCompletController,
                  hintText: 'Nombre Completo',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: dateBornController,
                  hintText: 'Fecha de Nacimiento',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                // username textfield
                MyTextField(
                  controller: userNameController,
                  hintText: 'Nombre de Usuario',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Correo',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                // username textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Contraseña',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordConfirmedController,
                  hintText: 'Confirma Contraseña',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                Center(
                  child: Button(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) => ConditionPage(),
                        ),
                      );
                    },
                    txt: 'Registrar',
                  ),
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
                            builder: (BuildContext context) => ConditionPage(),
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
                            builder: (BuildContext context) => ConditionPage(),
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
                            builder: (BuildContext context) => ConditionPage(),
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
