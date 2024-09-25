import 'package:flutter/material.dart';
import 'package:primeira_aplicacao/pages/login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3515), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });

    return Scaffold(
      body: SizedBox(
        width: double.infinity, // Preencher toda a largura
        height: double.infinity, // Preencher toda a altura
        child: Image.asset(
          'assets/image/inicio.gif',
          fit: BoxFit.cover, // Garantir que o GIF preencha a tela
        ),
      ),
    );
  }
}
