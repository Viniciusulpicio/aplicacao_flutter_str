import 'package:flutter/material.dart';
import 'package:primeira_aplicacao/shared/style.dart';
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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 31, 40),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(200.0), // Define a altura desejada
        child: CompBar(
          title: 'Faça seu login MostardaX',
        ),
      ),
      body: Align(
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
              children: [
                TextFormField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail_rounded, color: Colors.white),
                    hintText: "Informe o e-mail: ",
                    hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  validator: (String? email) {
                    if (email == "" || email == null) {
                      return "Preencha o email";
                    }
                    if (email.length < 6) {
                      return "O email não preenche os requisitos";
                    }
                    if (!email.contains("@")) {
                      return "O email é invalido";
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 4),
                TextFormField(
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.password, color: Colors.white),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        _showPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.white,
                      ),
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                    hintText: "Informe a senha: ",
                    hintStyle: const TextStyle(color: Colors.white),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 40.0),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          MyColors.azulTopGradiente,
                          MyColors.azulBottomGradiente,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Divider(color: Colors.white),
                const Text(
                  "Ainda não tem cadastro?",
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  child: const Text(
                    "Me cadastrar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  onTap: () => Navigator.pushNamed(context, '/cadastro'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      print("form ok");
    } else {
      print("form erro");
    }
  }
}
