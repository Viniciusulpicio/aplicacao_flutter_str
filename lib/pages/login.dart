import 'package:flutter/material.dart'; // importa o flutter precisa em todas páginas
import 'cadastro.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 31, 40),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0), // Define a altura desejada
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 20, 31, 40),
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centraliza os elementos
              children: [
               const SizedBox(height: 20), // Espaçamento superior
                const Text(
                  'Seja Bem-vindo ao Bluesky',
                  style: TextStyle(
                    color: Colors.white, // Cor do texto
                    fontSize: 24, // Tamanho da fonte
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20), // Espaçamento entre o texto e a imagem
                Image.asset(
                  'asset/bluesky.png', // Verifique o caminho da imagem
                  height: 100, // Altura da imagem
              ),
            ],
          ),
          
            centerTitle: true, // Para garantir que o título esteja centralizado
          ),
        ),
        body: Align(
          // alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(16.0), // padding interno
            margin: const EdgeInsets.all(8.0), // margin externa
            height: 550,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 20, 31, 40),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Form(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail_rounded, color: Colors.white), // Cor do ícone
                      hintText: "Informe o e-mail: ",
                      hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                      ),
                    ),
                    style: const TextStyle(color: Colors.white), // Cor do texto digitado
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password, color: Colors.white),
                      hintText: "Informe a senha: ",
                      hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                      ),
                    ),
                    style: const TextStyle(color: Colors.white), // Cor do texto digitado
                                    obscureText: true, // Para ocultar a senha

                  ),
                  const SizedBox(height: 16), // Espaçamento
                  Center(
                    child: ElevatedButton(
                      onPressed: () {}, // Ação do botão
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 50), // Tamanho do botão
                        backgroundColor: Colors.blueAccent, // Cor de fundo
                        foregroundColor: Colors.white, // Cor do texto
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                        ),
                        side: const BorderSide(
                          color: Colors.blue, // Cor da borda
                          width: 4.0, // Largura da borda
                        ),
                        elevation: 5, // Sombra do botão
                        shadowColor: Colors.white.withOpacity(0.1), // Opacidade da sombra
                      ),
                      child: const Text("Entrar"), // Texto no botão
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(color: Colors.white), // Linha divisória
                  const Text(
                    "Ainda não tem cadastro ?",
                    style: TextStyle(

                      color: Colors.white, // Cor do texto
                    ),
                  ),

                                    ElevatedButton(
                    onPressed: (){
                      // navegar pag login
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Cadastro())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 20, 31, 40), // Cor de fundo do botão
                      // textStyle: Colors.white, // Cor do texto
                    ),
                    child: const Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      backgroundColor: Color.fromARGB(255, 20, 31, 40),
                                            color: Colors.white, // Cor do texto
                    ),
                  ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
