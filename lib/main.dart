import 'package:flutter/material.dart';
import 'package:primeira_aplicacao/pages/cadastro.dart';
import 'package:primeira_aplicacao/pages/home.dart';
import 'package:primeira_aplicacao/pages/login.dart';
import 'package:primeira_aplicacao/shared/style.dart';
import 'package:primeira_aplicacao/pages/splash.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        fontFamily: MyFonts.fontPrimary,
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.azulEscuro),
        useMaterial3: true,
      ),

      initialRoute: "/",
      routes: {
        '/' : (context) => const Splash(),
        '/login' : (context) => const Login(),
        '/cadastro' : (context) => const Cadastro(),
        '/home' : (context) => const Home(),
      },
    );
  }
} 