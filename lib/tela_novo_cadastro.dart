// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/telacadastro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NovaSenha extends StatelessWidget {
  const NovaSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title:  Text('Cadastrar uma nova senha', style: TextStyle(fontSize: 25, 
                                                                                   fontWeight: FontWeight.bold),  )),
          body: Container(
              padding: EdgeInsets.all(30),
              child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                              // 1º filho
                              Text('Informe o email abaixo para redefinir sua senha: '), 
                              SizedBox(height: 15,),

                               // 2º filho  
                              CupertinoTextField(                                      
                                  padding: EdgeInsets.all(10),
                                  placeholder: 'Digite seu email',
                                  placeholderStyle: TextStyle(color:Color.fromARGB(255, 16, 5, 5), fontSize: 20),
                                  decoration: BoxDecoration(color: Color.fromARGB(255, 217, 207, 207),
                                                            borderRadius: BorderRadius.circular(7))),
                              // 3º filho
                              SizedBox(height: 15,),                              
                              ElevatedButton(                      
                              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 30, 8, 8), 
                                                              foregroundColor: Colors.white, minimumSize: Size(200, 40)),
                              
                              onPressed: (){Navigator.pop(context, Cadastro());}, child: Text('Enviar'))
],
)
)
)
);
}
}