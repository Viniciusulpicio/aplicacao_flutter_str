import 'package:flutter/material.dart';
import 'widget/app_bar.dart'; // importa o flutter precisa em todas páginas

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;


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
                    obscureText: _showPassword == false ? true : false,
                    decoration:  InputDecoration(
                      icon: const Icon(Icons.password, color: Colors.white),
                      suffixIcon: GestureDetector(child: Icon(
                        _showPassword == false ? Icons.visibility_off
                        :Icons.visibility,
                       color: Colors.white),
                      onTap: (){
                        setState(() {
                          _showPassword = !_showPassword;
                        }); 
                      },),
                      
                      hintText: "Informe a senha: ",
                      hintStyle: const TextStyle(
                          color: Colors.white), // Cor do texto do hint
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white), // Cor da borda focada
                      ),
                    ),
                    style: const TextStyle(
                        color: Colors.white), // Cor do texto digitado
                  ),
                  const SizedBox(height: 16), // Espaçamento
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/home'); // Navegação para a rota de cadastro
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0), // Tamanho do botão
                        decoration: BoxDecoration(

                          color:  Colors.blueAccent, // Cor de fundo
                          borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                          border: Border.all(
                            color: Colors.blue, // Cor da borda
                            width: 4.0, // Largura da borda
                          ),
                        ),
                        child: const Text(
                          "Entrar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white, // Cor do texto
                          backgroundColor: Colors.blueAccent, // Cor de fundo
                          ),
                        ),
                      ),
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

                  GestureDetector(
                  child: const Text(
                    "Me cadastrar",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18,
                        backgroundColor: Color.fromARGB(255, 20, 31, 40),
                        color: Colors.white, // Cor do texto
                    ),
                  ),
                  onTap: () => {Navigator.pushNamed(context, '/cadastro')}),

                  
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
 