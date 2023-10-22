import 'package:flutter/material.dart';
import 'package:loadingpage/Components/Button.dart';
import 'package:loadingpage/Components/LogoLogin.dart';
import 'package:loadingpage/Components/TextField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfafaf9),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              // logo
              Image.asset(
                'assets/icons/1024px.png', // Ruta de la imagen del carro
                width: 250, // Ancho de la imagen del carro
                height: 250, // Altura de la imagen del carro
              ),

              const SizedBox(height: 2),

              // welcome back, you've been missed!
              Text(
                'Bienvenido ha Guardianes de la Flora',
                style: TextStyle(
                    color: Color(0xFF292524), fontSize: 16, fontFamily: 'rdl2'),
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

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '¿Olvido la contraseña?',
                      style: TextStyle(
                          color: Color(0xFF78716c),
                          fontFamily: 'rdl',
                          fontSize: 11),
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
                    onTap: signUserIn,
                    txt: 'Entrar',
                  ),
                  Button(
                    onTap: signUserIn,
                    txt: 'Registrar',
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color(0xFFE0E2E5),
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
                        color: Color(0xFFE0E2E5),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),
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
    );
  }
}
