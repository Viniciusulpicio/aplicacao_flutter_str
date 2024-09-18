import 'package:flutter/material.dart';
import 'widget/app_bar.dart'; // importa o flutter precisa em todas páginas
import 'cadastro.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 31, 40),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(200.0), // Define a altura desejada
          child: CompBar(
            title: 'Faça seu login MostardaX',
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
              key: _formKey,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail_rounded,
                          color: Colors.white), // Cor do ícone
                      hintText: "Informe o e-mail: ",
                      hintStyle: TextStyle(
                          color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white), // Cor da borda focada
                      ),
                    ),
                    validator: (String? email) {
                      if(email == "" || email == null){
                        return "Preencha o email";
                      }
                      if(email.length < 6){
                        return "O email não preenche os requisitos";
                      }
                      if(!email.contains("@")){
                        return"O email é invalido";
                      }

                      return null;
                    },
                    style: const TextStyle(
                        color: Colors.white), // Cor do texto digitado
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    autofocus: false,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password, color: Colors.white),
                      hintText: "Informe a senha: ",
                      hintStyle: TextStyle(
                          color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white), // Cor da borda focada
                      ),
                    ),
                    style: const TextStyle(
                        color: Colors.white), // Cor do texto digitado
                    obscureText: true, // Para ocultar a senha
                  ),
                  const SizedBox(height: 16), // Espaçamento
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        buttonEnterClick();
                      }, // Ação do botão
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 50), // Tamanho do botão
                        backgroundColor: Colors.blueAccent, // Cor de fundo
                        foregroundColor: Colors.white, // Cor do texto
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Borda arredondada
                        ),
                        side: const BorderSide(
                          color: Colors.blue, // Cor da borda
                          width: 4.0, // Largura da borda
                        ),
                        elevation: 5, // Sombra do botão
                        shadowColor: Colors.white
                            .withOpacity(0.1), // Opacidade da sombra
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
                    onPressed: () {
                      // navegar pag login
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cadastro()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 20, 31, 40), // Cor de fundo do botão
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

  buttonEnterClick(){
    if (_formKey.currentState!.validate()){
      print("form ok");
    }
    print("form erro");
  }

} 
