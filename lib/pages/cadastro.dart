import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import necessário para usar inputFormatters
import 'package:primeira_aplicacao/shared/style.dart';
import 'widget/app_bar.dart'; // Importa o flutter precisa em todas páginas

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool _showPassword = false;
  bool _confirm_showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 31, 40),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(220.0), // Define a altura desejada
        child: CompBar(
          title: 'Faça seu cadastro no MostardaX',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 40), // Espaçamento entre os campos

              const TextField(
                autofocus: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.people, color: Colors.white), // Cor do ícone
                  hintText: "Digite seu nome: ",
                  hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                  ),
                ),
                style: TextStyle(color: Colors.white), // Cor do texto digitado
              ),
              const SizedBox(height: 20), // Espaçamento entre os campos

              TextField(
                autofocus: false,
                decoration: const InputDecoration(
                  icon: Icon(Icons.numbers, color: Colors.white), // Cor do ícone
                  hintText: "Digite seu CPF: ",
                  hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                  ),
                ),
                style: const TextStyle(color: Colors.white), // Cor do texto digitado
                keyboardType: TextInputType.number, // Abre o teclado numérico
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Permite apenas números
                ],
              ),
              const SizedBox(height: 20), // Espaçamento entre os campos

              TextField(
                autofocus: false,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone, color: Colors.white), // Cor do ícone
                  hintText: "Digite seu número: ",
                  hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                  ),
                ),
                style: const TextStyle(color: Colors.white), // Cor do texto digitado
                keyboardType: TextInputType.number, // Abre o teclado numérico
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Permite apenas números
                ],
              ),
              const SizedBox(height: 20), // Espaçamento entre os campos

              const TextField(
                autofocus: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.email, color: Colors.white), // Cor do ícone
                  hintText: "Digite seu email: ",
                  hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                  ),
                ),
                style: TextStyle(color: Colors.white), // Cor do texto digitado
              ),
              const SizedBox(height: 20), // Espaçamento entre os campos

              TextField(
                obscureText: !_showPassword,
                autofocus: false,
                decoration: InputDecoration(
                  icon: const Icon(Icons.password, color: Colors.white), // Cor do ícone
                  suffixIcon: GestureDetector(
                    child: Icon(
                      _showPassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onTap: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                  hintText: "Digite sua senha: ",
                  hintStyle: const TextStyle(color: Colors.white), // Cor do texto do hint
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                  ),
                ),
                style: const TextStyle(color: Colors.white), // Cor do texto digitado
              ),
              const SizedBox(height: 20), // Espaçamento entre os campos

              TextField(
                autofocus: false,
                obscureText: !_confirm_showPassword,
                decoration: InputDecoration(
                  icon: const Icon(Icons.password, color: Colors.white), // Cor do ícone
                  suffixIcon: GestureDetector(
                    child: Icon(
                      _confirm_showPassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onTap: () {
                      setState(() {
                        _confirm_showPassword = !_confirm_showPassword;
                      });
                    },
                  ),
                  hintText: "Confirme sua senha: ",
                  hintStyle: const TextStyle(color: Colors.white), // Cor do texto do hint
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                  ),
                ),
                style: const TextStyle(color: Colors.white), // Cor do texto digitado
              ),
              const SizedBox(height: 20), // Espaçamento entre os campos

              const SizedBox(height: 35), // Espaçamento entre os campos

              Center(
                          child: ElevatedButton(
              onPressed: () {}, // Ação do botão
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 50), // Tamanho do botão
                backgroundColor: MyColors.azulEscuro, // Torna a cor de fundo transparente
                foregroundColor: Colors.white, // Cor do texto
                shape: const RoundedRectangleBorder(
                ),
                // shadowColor: Colors.white.withOpacity(0.1), // Opacidade da sombra

              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      MyColors.azulTopGradiente,
                      MyColors.azulBottomGradiente,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0), // Borda arredondada para o gradiente
                ),
                alignment: Alignment.center, // Centraliza o texto
                child: const Text("Cadastrar"), // Texto no botão
              ),
            ),


              ),

              const SizedBox(height: 16),
              const Divider(color: Colors.white), // Linha divisória
              const Text(
                "Já tem login",
                style: TextStyle(
                  color: Colors.white, // Cor do texto
                ),
              ),

              GestureDetector(
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    backgroundColor: Color.fromARGB(255, 20, 31, 40),
                    color: Colors.white, // Cor do texto
                  ),
                ),
                onTap: () => Navigator.pushNamed(context, '/'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
