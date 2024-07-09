import 'package:app/telacadastro.dart';
import 'package:flutter/material.dart';
import 'detalhamentos_cards.dart';
import 'texto_edo.dart';

class Tela1 extends StatelessWidget {
  Tela1({super.key});


 
  
  @override
  Widget build(BuildContext context) {

    final String email = ModalRoute.of(context)!.settings.arguments as String;
    List titulos = Titulos();
    List imagens = Imagens();

    return Scaffold(
        
        drawer: Builder(builder: (context) => Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
                              decoration: BoxDecoration(color: Color.fromARGB(255, 30, 8, 8)),
                              accountName: Text('Bem vindo'), 
                              accountEmail: Text(email),
                              currentAccountPicture: Image.asset('assets/logo.jpg', width: 50,)),
                                ListTile(
                                //leading: Icon(Icons.account_box, color: Colors.red,),
                                title:Text('Básico de redes neurais'),
                                subtitle: Text(''),
                                onTap: () {
                                 
                                  //pop para o menu
                                  Navigator.of(context).pop();
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PrimeroTextoCard(texto: TextoEdo()[0],)));
                                   }),


                                ListTile(
                                //leading: Icon(Icons.account_box, color: Colors.red,),
                                title:Text(titulos[1]),
                                subtitle: Text(''),
                                onTap: () {
                                //pop para o menu
                                Navigator.of(context).pop();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SegundoTextoCard(texto: TextoEdo()[1],))); }),

                                ListTile(
                                //leading: Icon(Icons.account_box, color: Colors.red,),
                                title:Text(titulos[2]),
                                subtitle: Text(''),
                                onTap: () {
                                //pop para o menu
                                Navigator.of(context).pop();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TerceiroTextoCard(texto: TextoEdo()[2],))); }),

                                ListTile(
                                //leading: Icon(Icons.account_box, color: Colors.red,),
                                title:Text(titulos[3]),
                                subtitle: Text(''),
                                onTap: () {
                                //pop para o menu
                                Navigator.of(context).pop();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => QuartoTextoCard(texto: TextoEdo()[3],))); }),
                                ListTile(
                                //leading: Icon(Icons.account_box, color: Colors.red,),
                                title:Text('Sair'),
                                subtitle: Text(''),
                                onTap: () {
                                //pop para o menu
                                Navigator.of(context).pop();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro())); }),


        ],
        ),
        )
        ),


        
        appBar: AppBar(title: Text('Menu principal')),
        body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
              children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                                  buildCard(context, TextoEdo()[0], titulos[0], imagens[0]),
                                  buildCard(context, TextoEdo()[1], titulos[1], imagens[1]),]
                                  ),
                       SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                  buildCard(context, TextoEdo()[2], titulos[2], imagens[2]),
                                  buildCard(context, TextoEdo()[3], titulos[3], imagens[3]),],
                                  ),
          ],
          ),
          ),
          );
          }
  Widget buildCard(BuildContext context, String texto, String titulo, String imagem) {
         return GestureDetector(
                onTap: () {
              
                if (titulo == 'Básico de redes neurais')
                {Navigator.push(context, MaterialPageRoute(builder: (context) => PrimeroTextoCard(texto: texto)));}

                else if (titulo == 'Equações diferenciais Parciais')
                {Navigator.push(context, MaterialPageRoute(builder: (context) => SegundoTextoCard(texto: texto)));}

                else if (titulo == 'O que são PINNS?') 
                {Navigator.push(context, MaterialPageRoute(builder: (context) => TerceiroTextoCard(texto: texto)));}

                else if (titulo == 'Rede neural OpenIA-J')
                 { Navigator.push(context, MaterialPageRoute(builder: (context) => QuartoTextoCard(texto: texto)));}
                },
                child: Card(
                     color: Color.fromARGB(255, 78, 15, 15),
                     elevation: 10,
                     shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20)),
                    child: Container(
                           width: 150, // Definir largura do cartão
                           padding: EdgeInsets.all(16), // Preenchimento interno do cartão
                           child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                
                                                Image.asset('assets/touchscreen.png', width: 50),
                                              ],
                                            ),
                                            Image.asset(imagem, width: 80,),
                                            
                                            SizedBox(height: 10),
                                            SizedBox(height: 10),
                                            Text(titulo,style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center),
                                            SizedBox(height: 10),
                                            //Text('${texto.substring(0, 10)}...',style: TextStyle(color: Colors.white, fontSize: 12), textAlign: TextAlign.justify, ),
      ],
      ),
      ),
      )
      );
      }
      }

