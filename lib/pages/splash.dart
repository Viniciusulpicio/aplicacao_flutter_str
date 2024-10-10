import 'package:flutter/material.dart';
import 'package:primeira_aplicacao/pages/login.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.gif(
      gifPath: 'assets/image/inicio.gif',
      gifWidth: double.infinity,
      gifHeight: double.infinity,
      nextScreen: const Login(),
      duration: const Duration(milliseconds: 11000),
      onInit: () {
        debugPrint("Splash Screen: Initialized");
      },
      onEnd: () {
        debugPrint("Splash Screen: Ended");
      },
    );  
  }
}





// import 'package:flutter/material.dart';
// import 'package:primeira_aplicacao/pages/login.dart';

// class Splash extends StatelessWidget {
//   const Splash({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(const Duration(milliseconds: 9350), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => const Login()),
//       );
//     });

//     return Scaffold(
//       body: SizedBox(
//         width: double.infinity, // Preencher toda a largura
//         height: double.infinity, // Preencher toda a altura
//         child: Image.asset(
//           'assets/image/inicio.gif',
//           fit: BoxFit.cover, // Garantir que o GIF preencha a tela
//         ),
//       ),
//     );
//   }
// }
