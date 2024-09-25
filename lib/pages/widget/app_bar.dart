import 'package:flutter/material.dart';

class CompBar extends StatelessWidget {
  final String title;

  const CompBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(250.0), // Define a altura fixa da AppBar
      child: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 31, 40),
        flexibleSpace: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25), // Ajuste de espaçamento superior
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28, // Tamanho grande da fonte
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20), // Espaço entre texto e imagem
              Expanded(
                child: Image.asset(
                  'assets/image/skyflare.png',
                  fit: BoxFit.contain, // Ajuste de imagem para caber no espaço
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
