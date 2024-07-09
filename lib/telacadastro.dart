// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/primeira_tela.dart';
import 'package:flutter/material.dart';


class Cadastro extends StatelessWidget {
  
 
  const Cadastro({super.key});
  

  @override
  Widget build(BuildContext context) {
    String email =  '';
    String senha =  '';

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
              
              appBar: AppBar(title: Row(
                  children: 
                  [
                  //1º filho
                  Text('OpenIA-J', style: TextStyle(fontSize: 30,
                                                   fontWeight: FontWeight.bold, 
                                                   color: const Color.fromARGB(255, 30, 8, 8) ),),
                  SizedBox(width: 50,),

                  //2º filho
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(elevation: 5, 
                                                                  backgroundColor: Color.fromARGB(255, 30, 8, 8), 
                                                                  foregroundColor: Colors.white),
                                  
                                  onPressed: (){Navigator.pushNamed(context,  '/novouser');}, child: Text('Criar uma conta')),
                  )
                  ],
                  )
                  ),
              body: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: 
                      [
                       // assets/oficial.png
                      Center(child: Align(alignment: Alignment.topCenter,
                                            child:  Image.asset('assets/logo.jpg', width: 200, height:130,))),
                      //SizedBox(height: 30,),
                      TextField(decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
                                           
                                            style: TextStyle(fontSize: 20),
                                            onChanged: (text)
                                                       {email = text;}, 
                                            
                               ),
                      //SizedBox(height:  -5,),


                      TextField(obscureText: true, decoration: InputDecoration(labelText: 'senha',border: OutlineInputBorder()),
                                onChanged: (text){senha = text;}
                               ),
          

                      ElevatedButton(
                                    child: Text('Esqueceu sua senha?', style: TextStyle(fontSize: 15, color: Colors.black)),
                                     
                                    style: ElevatedButton.styleFrom(elevation: 0, backgroundColor: Colors.transparent),
                                    onPressed: ()
                                                  {
                                                  print('bem vindo, ${email}');
                                                  print('\nsenha: ${senha}');
                                                  Navigator.pushNamed(context, '/novasenha');
                                                  
                                                                                                    
                                                  },
                                    ),
                      ElevatedButton(
                                    child: Text('Entrar', style: TextStyle(fontSize: 15, )),
                                    style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 30, 8, 8), foregroundColor: Colors.white, minimumSize: Size(200, 60)),
                                    onPressed: ()
                                                  {
                                                  print('bem vindo passado: ${email}');
                                                  print('\nsenha: ${senha}');
                                                  Navigator.pushNamed(context, '/tela1', arguments: email);
                                                  
                                                                                                    
                                                  },
                                    )
                      ],
      ),
      ),
      )
      );
      }
      }



/*

TextFiel → objeto que aceita uma série de textos que o usuário pode inserir  como textfield é um filho pode inserir muitos 
podemos definir o tipo de textfield().

obscureText → parâmetro que oculta a senha (é um booleano)

Text('Email: ') → por causa do decoration não preciso mais do bloco text
Text('Senha: ') → por causa do decoration não preciso mais do bloco text

mainAxisAlignment: MainAxisAlignment.spaceAround → estica o ElevationButton

onChanged: (text) → marca qualquer modificação de entrada

//padding → control + (.)

se coloca variáveis que vou usar dentro de MyAppState após widgets build

*/