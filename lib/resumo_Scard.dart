import 'package:flutter/material.dart';
import 'texto_edo.dart';




class ResumoEdo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Text("""Derivada é uma ferramenta da matemática que nos ajuda a prever, discutir ou recapitular comportamentos de
                   grandezas  que estajam variando no tempo.
                    Por exemplo, na imagem abaixo vemos uma certa característica da população de garfanhotos de uma certa região de mata""", 
                    textAlign: TextAlign.justify,)
      ),
    );
  }
}
