import 'package:app/tela_novo_cadastro.dart';
import 'package:app/tela_solucao_edp.dart';
import 'package:flutter/material.dart';
import 'telacadastro.dart';
import 'primeira_tela.dart'; 
import 'tela_novo_cadastro.dart';
import 'new_sig.dart';
import 'tela_solucao_edp.dart';

// rotear telas 
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: 
            {
            '/': (context) => Cadastro(),
            '/tela1': (context) => Tela1(),
            '/novasenha': (contex) => NovaSenha(),
            '/novouser': (context) => NewSign(), 
            '/resolvendo': (context) => SolucaoEdp(),
            }
    );
  }
}