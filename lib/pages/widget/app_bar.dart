import 'package:flutter/material.dart';

class CompBar extends StatelessWidget {

  final String title;

  const CompBar({ required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 20, 31, 40),
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centraliza os elementos
        children: [
          const SizedBox(height: 50), // Espaçamento superior
          Text(
            title,
            style: const TextStyle(
              color: Colors.white, // Cor do texto
              fontSize: 24, // Tamanho da fonte
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20), // Espaçamento entre o texto e a imagem
          Image.asset(
            'assets/image/skyflare.png', // Verifique o caminho da imagem
            height: 140, // Altura da imagem
          ),
        ],
      ),

      centerTitle: true, // Para garantir que o título esteja centralizado
    );
  }
}
