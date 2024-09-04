import 'package:flutter/material.dart';

 class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Wello Word"),),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: const Icon(Icons.add),),
        body: Column(
          children: [
            const TextField(),
            ElevatedButton(onPressed: (){}, child: const Text("Entrar"),
            ),
            const Divider(color: Colors.black,),
            const Text("Cadastrar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            const Text("Sem cadastro? Cloque acima"),
          ],
        ),
    );
  }
}
