import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import necessário para usar inputFormatters
import 'login.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

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
                  'Venha se cadastrar no BlueSky',
                  style: TextStyle(
                    color: Colors.white, // Cor do texto
                    fontSize: 24, // Tamanho da fonte
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20), // Espaçamento entre o texto e a imagem
                Image.asset(
                  'assets/image/bluesky.png', // Verifique o caminho da imagem
                  height: 100, // Altura da imagem
              ),
            ],

            
          ),
          
            centerTitle: true, // Para garantir que o título esteja centralizado
          ),
        ),
        
        body:  Padding(
          padding:  const EdgeInsets.all(16.0),
          child:  Column(
            children: [
                              const SizedBox(height: 50), // Espaçamento entre os campos

                const TextField(
                    autofocus: true,
                    decoration:  InputDecoration(
                      icon: Icon(Icons.people, color: Colors.white), // Cor do ícone
                      hintText: "Digite seu nome: ",
                      hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                      ),
                    ),
                    style:  TextStyle(color: Colors.white), // Cor do texto digitado
                ),
               const SizedBox(height: 20), // Espaçamento entre os campos

               const TextField(
                                    autofocus: false,
                    decoration:  InputDecoration(
                      icon: Icon(Icons.email, color: Colors.white), // Cor do ícone
                      hintText: "Digite seu email: ",
                      hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                      ),
                    ),
                    style:  TextStyle(color: Colors.white), // Cor do texto digitado
               ),
                const SizedBox(height: 20), // Espaçamento entre os campos

                const TextField(
                                    autofocus: false,
                    decoration:  InputDecoration(
                      icon: Icon(Icons.password, color: Colors.white), // Cor do ícone
                      hintText: "Digite sua senha: ",
                      hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                      ),
                    ),
                    style:  TextStyle(color: Colors.white), // Cor do texto digitado
                    obscureText: true, // Para ocultar a senha
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
                    style:  const TextStyle(color: Colors.white), // Cor do texto digitado
                keyboardType: TextInputType.number, // Abre o teclado numérico
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Permite apenas números
                ], ),
                                const SizedBox(height: 20), // Espaçamento entre os campos


                TextField(
                        autofocus: false,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.house, color: Colors.white), // Cor do ícone
                      hintText: "Digite seu CEP: ",
                      hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Cor da borda focada
                      ),
                    ),
                    style:  const TextStyle(color: Colors.white), // Cor do texto digitado
                keyboardType: TextInputType.number, // Abre o teclado numérico
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Permite apenas números
                ], 
                ),
                    const SizedBox(height: 35), // Espaçamento entre os campos

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
                      child: const Text("Cadastrar"), // Texto no botão
                    ),
                  ),

                  const SizedBox(height: 16),
                  const Divider(color: Colors.white), // Linha divisória
                  const Text(
                    "Ja tem login",
                    style: TextStyle(

                      color: Colors.white, // Cor do texto
                    ),
                  ),


                  ElevatedButton(
                    onPressed: (){
                      // navegar pag login
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Login())
                      );
                    },
                                        style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 20, 31, 40), // Cor de fundo do botão
                      // textStyle: Colors.white, // Cor do texto
                    ),
                    child: const Text(
                    "Logar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white, // Cor do texto
                    ),
                  ),
                  ),



                  
                

            ],
          ),
        ),
      ),
    );
  }
}
