import 'package:flutter/material.dart'; // importa o flutter precisa em todas paginas 

 class Login extends StatelessWidget { // digite stl para criar o template
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( // scaffold é o celular em si, vai tudo dentro dele
        backgroundColor:  Colors.black,// deixa o background cinza (para por essas cores precisa do Colors.cor)
      appBar: AppBar( // voce cria o app bar (ou nav bar)
        backgroundColor:  Colors.black,// deixa o background cinza (para por essas cores precisa do Colors.cor)

         title: const Column(
           children: [
                   SizedBox(height: 22), // Adiciona um espaçamento de 16 pixels acima do título
              Center(
              child: Text("Entrar no twitter", style: TextStyle(
                               color: Colors.white, // Define a cor do texto como branco
                            ),),
                     ),
           ],
           
         ),), 

        body: Align(
          
            alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(16.0), // padding para deixar uma margin por fora
            margin: const EdgeInsets.all(8.0), // margin por fora
            height: 550,
            decoration: 
            BoxDecoration(
              color: Colors.black, 
              borderRadius: BorderRadius.circular(8),
            ),
            
          
            child: Form(
              child: Column( // cria um filho para deixar tudo em forma de coluna
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: Image.asset("twitter.png")),
                  TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail_rounded, color: Colors.white), // Cor do ícone
                      hintText: "Informe o e-mail: ",
                      hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Cor da borda quando o campo está focado
                      ),
                    ),
                    style: const TextStyle(color: Colors.white), // Cor do texto digitado
                  ),

                    const SizedBox(height: 4,),
                    TextFormField(
                    autofocus: false,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password, color: Colors.white),
                      hintText: "Informe a senha: ",hintStyle: TextStyle(color: Colors.white), // Cor do texto do hint
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Cor da borda quando o campo está focado
                      ),
                    ),
                    style: const TextStyle(color: Colors.white), // Cor do texto digitado
                  ),
                  const SizedBox(height: 16,), // LINHA IMPORTANTE para dar margin e espaçamento é sizebox (é como se fosse o "br" do html)
                  Center(
                    child: ElevatedButton(onPressed: (){},  // cria outro botão
                    
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 50), // altera o tamanho do botao
                      backgroundColor: Colors.blueAccent, // altera a cor de fundo
                      foregroundColor: Colors.white, // altera a cor da letra
                      shape: RoundedRectangleBorder( // faz o shape 
                        borderRadius: BorderRadius.circular(10.0), // determina que o border radius sera 0.0 ou seja quadrado
                      ),
                      
                      side: const BorderSide( // altera o border
                        color: Colors.blue, // muda a cor
                        width: 4.0, // tamanho
                      ),
                      elevation: 5, 
                      shadowColor: Colors.black.withOpacity(0.1),  // opacidade da borda
                    ),child: const Text("Entrar"), // cria um filho dentro do botão e põe o texto
                    ),
                  ),
              
                  const SizedBox(height: 16,),
                  const Divider(color: Colors.white,),
                    const Text(
                      "Cadastrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white, // Define a cor do texto como branco
                      ),
                    ),

                    const Text(
                      "Sem cadastro? Clique acima",
                      style: TextStyle(
                        color: Colors.white, // Define a cor do texto como branco
                      ),
                    ),

                ],
              ),
            ),
          ),
        ),
    );
  }
}
