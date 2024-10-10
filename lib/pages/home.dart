import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Margens internas
          decoration: BoxDecoration(
            color: Colors.grey[200], // Cor de fundo da barra de pesquisa
            borderRadius: BorderRadius.circular(30), // Borda arredondada
          ),
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.grey), // Ícone da lupa
              SizedBox(width: 10), // Espaçamento entre o ícone e o campo de texto
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Pesquisar', // Placeholder do campo de pesquisa
                    border: InputBorder.none, // Remove a borda padrão
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.bolt, color: Colors.yellow), // Ícone de raio
                onPressed: () {
                  // Ação do botão de raio
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
