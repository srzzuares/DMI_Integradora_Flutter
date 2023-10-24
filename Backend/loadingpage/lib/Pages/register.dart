import 'package:flutter/material.dart';
import 'package:loadingpage/Components/Button.dart';
import 'package:loadingpage/Components/LogoLogin.dart';
import 'package:loadingpage/Components/TextField.dart';

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
                    onTap: signUserIn,
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
                  children: const [
                    // google button
                    LogoLogin(imagePath: 'assets/images/google.png'),

                    SizedBox(width: 25),

                    // facebook button
                    LogoLogin(imagePath: 'assets/images/facebook.png'),

                    SizedBox(width: 25),

                    // Github button
                    LogoLogin(imagePath: 'assets/images/GitHub2000.png')
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
