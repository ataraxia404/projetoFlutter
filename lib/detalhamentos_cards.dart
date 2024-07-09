import 'package:flutter/material.dart';


class DetalhesCard extends StatelessWidget {
  final String titulo;
  final String texto;

  const DetalhesCard({super.key, required this.titulo, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: Padding(
            padding: EdgeInsets.all(30),
            child:
            Text(texto,style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,
        ),
        ),
        );
        }
        }
