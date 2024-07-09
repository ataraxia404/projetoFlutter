// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/telacadastro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewSign extends StatelessWidget {
  const NewSign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Criar conta'), 
                       leading: IconButton(onPressed: (){Navigator.pop(context);}, 
                                           icon: Icon(Icons.arrow_back) , ),),
        body: Container(
        
          child:
         
           Center(
             child: Column(
             mainAxisAlignment: MainAxisAlignment.start,

             children: [
                       
                       //1º filho  
                       SizedBox(height: 30,),
                       Padding(
                         padding: const EdgeInsets.all(30),
                         child: CupertinoTextField(
                                            
                                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                            placeholder: 'Nome',
                                            
                                            placeholderStyle: TextStyle(color: Colors.black, fontSize: 15),
                                            decoration: BoxDecoration(border: 
                                                                      Border(bottom: 
                                                                             BorderSide(color: Colors.black, width: 1.0)),)
                    
                       ),
                       ),
                      
                       //2º filho
                       Padding(
                         padding: const EdgeInsets.all(30),
                         child: CupertinoTextField(
                                            
                                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                            placeholder: 'e-mail',
                                            
                                            placeholderStyle: TextStyle(color: Colors.black, fontSize: 15),
                                            decoration: BoxDecoration(border: 
                                                                      Border(bottom: 
                                                                             BorderSide(color: Colors.black, width: 1.0 )),)
                       ),
                       ),

                       //3º filho
                       SizedBox(height: 2,),
                       Padding(
                         padding: const EdgeInsets.all(30),
                         child: CupertinoTextField(
                                            
                                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                            placeholder: 'Senha',
                                            
                                            placeholderStyle: TextStyle(color: Colors.black, fontSize: 15),
                                            decoration: BoxDecoration(border: 
                                                                      Border(bottom: 
                                                                             BorderSide(color: Colors.black, width: 1.0)),)
                       ),
                       ),
                       SizedBox(height: 20,),
                       ElevatedButton(
                                      onPressed: (){Navigator.pop(context, Cadastro());
                                      print('Cadastrado com sucesso');}, 
                                      child: Text('Cadastrar'),
                                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 30, 8, 8), 
                                                              foregroundColor: Colors.white, minimumSize: Size(200, 40)))
                       
                       
                       
                       
              
          ],
          ),
          ),
          )
          )
          );
          }
          }