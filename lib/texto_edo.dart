// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/primeira_tela.dart';
import 'package:app/tela_solucao_edp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latext/latext.dart';
import 'package:app/telacadastro.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';
import 'dart:convert';
import 'package:http/http.dart' as http;



List TextoEdo() {
  List<String> texto = [
''' ''',
''' ''',
''' ''',
''' '''
];
  
  return texto;
}

List Titulos(){
  List<String> titulos = ['Básico de redes neurais',
                          'Equações diferenciais Parciais',
                          'O que são PINNS?',
                          'Rede neural OpenIA-J'];
  return titulos;
}

List  Imagens() {
      List<String> imagens = [
      'assets/artificial.png',  // caminho da primeira imagem
      'assets/book.png',  // caminho da segunda imagem
      'assets/math.png',  // caminho da terceira imagem
      'assets/logo.jpg'   // caminho da quarta imagem
    ];
    return imagens;
}


//Faz um container > coluna > img > texto

List imagem = Imagens();
List titulos = Titulos();

/////////////////////////////////////////////////////////////////////////////////////////////////////////
class ResumoEdo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text('Um exemplo simples', style: TextStyle(fontSize:  30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 30, 8, 8)),)),
          Text(
            """

            Uma equação diferencial é uma ferramenta da matemática que nos ajuda a prever, discutir ou recapitular comportamentos de grandezas que estejam variando no tempo. Por exemplo, na imagem abaixo vemos uma certa característica, o número de  coelhos de uma certa região. Se houver muitos predadores, essa população irá diminuir ao longo do tempo, assim como não houver recursos para todos os coelhos. 
            

            """, textAlign: TextAlign.justify, style: TextStyle( fontWeight: FontWeight.bold,)),
        
           Center(child: Image.asset('assets/coelhos.jpg')),

         Text("""

              A situação oposta acontece quando há poucos predadores e muito recursos de sobrevivência. A situação ideal é quando essa população atinge um limite sustentável, ou seja, não a quantidade de coelhos que nascem e morrem são as mesmas e há recursos. Esse nosso papo poderia  ser resumido por uma equação diferencial, chamada de crescimento logístico 

            
            """,
          textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold,)),
          
          Center(child: Image.asset('assets/equação de logistica.png', width:  500,)),
         
          Text("""Veja bem, por enquando não vamos explorar tudo sobre equações diferenciais, mas para entendimento geral, as letras na equação acima significa alguma coisa do problema que acabamos de introduzir. L na equação significa a situação de sustentabilidade e P é p número de coelhos. Se 
            o número de coelhos subir mais do que a situação  porque o tudo dentro do parênteses vai ser zero, e isso significa que a população de coelhos está estabilizada, ou seja, chegou na situação sustentável. Com essa equação diferencial, podemos achar sua solução, que é equivalente por analogia, em encontrar as raízes da equação de básckara. Sabe por que elas precisam ser encontradas? para achar o gráfico da função. 
            A mesma coisa acontece aqui, quando acharmos a função que resolve a equação diferencial podemos explorar no gráfico  o que vai acontecer mudando os valores de L, P e λ (chamada de constante, que é um número e também a única coisa que não muda dentro dessa equação diferencial),
            
             """, textAlign: TextAlign.justify, style: TextStyle( fontWeight: FontWeight.bold,)),

            Center(child: Text("""O que é uma equação diferencial? \n """, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 30, 8, 8)))),

            Text("""Uma equação diferencial é como se fosse uma caixa mágica da matemática, que resolve coisas para você e também pode ver o futuro caso deseje, assim como o passado. A equação diferencial é um jeito para você encontrar a função que mostra essa evolução do passado para o futuro
            do contexto que você está analisando, como por exemplo, o número da população de coelhos ao longo das semanas, meses ou anos. Podemos definir esse "ente" matemático formalmente dessa forma: Uma equação diferencial estabelece  uma relação  a função e as derivadas dessas funções, que descreve uma quantidade que muda em relação a outra 

            """, textAlign: TextAlign.justify, style: TextStyle( fontWeight: FontWeight.bold,)),

            Center(child: Image.asset('assets/diff.png', width:  700,)),

            Text("""A situação muda se y não depender mais de x e sim  de outras variáveis, incluindo o próprio x. Para seu entendimento, é dessa forma que é interpretado (analogia): A mãe de Pedro precisou sair e deixou ele com o seu irmão mais velho, o Rafael.
            No momento que a mãe de Pedro estiver fora, a dependência  Pedro é incondicionalmente associada a Rafael. Mas o pai dos meninos chegou, agora a dependência de Pedro é dividada entre seu pai e seu irmão. Quando sua mãe chega,  a dependência é dividido para três pessoas. Podemos representar isso dessa forma:
            D → dependência de Pedro é D(irmão, mãe, pai). Na equação acima só têm uma dependência, y depende de x e x não depende de ninguém, mas y pode depender de t, m, k que são variáveis do problema. A imagem logo abaixo é como podemos escrever uma EDP
            
            """, textAlign: TextAlign.justify,  style: TextStyle( fontWeight: FontWeight.bold,)),

            Center(child: Text("""Classificação de uma Equação diferencial \n """, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,  color: Color.fromARGB(255, 30, 8, 8)))),
            Text(""" As equações diferenciais podem ser classificadas como EDO (equações diferenciais ordinárias) e EDPS (equações diferenciais parciais). A EDO é uma equação diferencial "fácil de se resolver" pois podemos separar as variáveis e rapidamente resolvê-las.    Já uma EDP é uma equação que não é fácil separar as variáveis e por como há também uma dependência do fator que está variando (lembre-se do exemplo de  Pedro, lá a dependência de pedro era dividida para três pessoas)
            """, textAlign:  TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold,)),

    

             Center(child: Image.asset('assets/EDP.png', width: 1000,)), 

             Text('Com isso, temos o básico para aprender sobre PINSS. Clique no botão do lado esquerdo acima para aprender mais.', textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold,))




        ],
      ),
    );
  }
}


class ResumoRedes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
         Center(child: Text("""O que são Redes Neurais?\n""", textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,))),
        Text(
            """As redes neurais são um dos pilares da inteligência artificial moderna, inspiradas pelo funcionamento do cérebro humano. Elas são projetadas para reconhecer padrões e tomar decisões baseadas em dados, o que as torna extremamente  poderosas para uma variedade de aplicações, desde reconhecimento de imagens até tradução de idiomas
            A rede neural é composta por uma camada de nós (neurônios artificiais) que processam informações. Cada nó em uma camada está conectado a nós de outras camadas por meio de "sinapses" artificiais, que têm pesos ajustáveis (são as linhas que ligam os neurônios). Esses pesos são ajustados durante o 
            treinamento da rede para melhorar sua capacidade de prever ou classificar dados.
         
            """, textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold),),
        
         Text("""
            
            
            """,
          textAlign: TextAlign.justify),


          
          Center(child: Image.asset('assets/redeizn.png')),


          Center(child: Text("""Estrutura de uma Rede Neural \n """,textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,))),
          
            Text("""Camada de Entrada (Input Layer): Recebe os dados de entrada. Cada neurônio nesta camada representa uma característica dos dados. Por exemplo, em uma imagem, cada neurônio poderia representar um pixel.

                  Camadas Ocultas (Hidden Layers): Processam as informações recebidas. Uma rede neural pode ter várias camadas ocultas. Essas camadas executam operações matemáticas nos dados de entrada, transformando-os em uma forma que a camada de saída possa usar.

                  Camada de Saída (Output Layer): Fornece o resultado final. Em um problema de classificação, cada neurônio na camada de saída pode representar uma classe diferente.
             """, textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold)),

            Center(child: Text("""Como as Redes Neurais Aprendem? \n """, textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,))),

            Text("""
            O aprendizado em redes neurais geralmente ocorre através de um processo chamado aprendizado supervisionado, onde a rede é treinada usando um conjunto de dados rotulados. O processo pode ser descrito em algumas etapas básicas:

            Inicialização: Os pesos das conexões entre os neurônios são inicializados com valores aleatórios.

            Propagação Direta (Forward Propagation): Os dados de entrada são alimentados pela rede, passando pela camada de entrada, pelas camadas ocultas e chegando à camada de saída. Cada neurônio aplica uma função de ativação nos dados que recebe, o que determina a saída do neurônio.

            Cálculo do Erro: A saída da rede é comparada com o valor real (rótulo) para calcular o erro.

            Propagação Reversa (Backpropagation): O erro é propagado de volta pela rede, ajustando os pesos das conexões para minimizar o erro. Isso é feito usando um algoritmo de otimização, como o gradiente descendente.

            Repetição: O processo de propagação direta e propagação reversa é repetido para muitas iterações (épocas) até que o erro seja minimizado.
            
            
            """, textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold)),

            Center(child: Image.asset('assets/rotulos.png')),

            Text("""

            A situação muda se y não depender mais de x e sim  de outras variáveis, incluindo o próprio x. Para seu entendimento, é dessa forma que é interpretado (analogia): A mãe de Pedro precisou sair e deixou ele com o seu irmão mais velho, o Rafael.
            No momento que a mãe de Pedro estiver fora, a dependência  Pedro é incondicionalmente associada a Rafael. Mas o pai dos meninos chegou, agora a dependência de Pedro é dividada entre seu pai e seu irmão. Quando sua mãe chega,  a dependência é dividido para três pessoas. Podemos representar isso dessa forma:
            D → dependência de Pedro é D(irmão, mãe, pai). Na equação acima só têm uma dependência, y depende de x e x não depende de ninguém, mas y pode depender de t, m, k que são variáveis do problema. A imagem logo abaixo é como podemos escrever uma EDP
            
            """, textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold)),

            Center(child: Text(""" Aplicações das Redes Neurais \n """, textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,))),
            Text(""" 
               As redes neurais têm uma ampla gama de aplicações, incluindo: Reconhecimento de Imagens: Identificação de objetos, pessoas ou cenas em imagens.Processamento de Linguagem Natural: Tradução automática, análise de sentimentos e chatbots. Reconhecimento de Voz: Conversão de fala em texto e comando por voz. Diagnóstico Médico: Identificação de doenças a partir de exames médicos, como radiografias e ressonâncias magnéticas.
              Previsão Financeira: Análise de mercado e previsão de preços de ações
                        
            
            
            """, textAlign:  TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold)),

  



        ],
      ),
    );
  }
}

class ResumoPINNS extends StatelessWidget {
  const ResumoPINNS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Column(children: [
      Text('Rede Neural Informada por Física', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
      
      Text("""\nRedes neurais informadas por física é um tipo de rede específica para se calcular equações diferenciais. Visto que já estudamos uma gama de aplicações de EDPS e EDO, as PINNS são relevantes pois existem eqquações diferenciais que não há solução analítica
      e portanto se demonstra uma excelente ferramenta.  """,  textAlign:  TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold)),
      
      Text('Como funciona', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
      
      Text("""\nIniciamos com um vetor de pontos X, que contém tanto pontos dentro de uma região que queremos estudar, assim como pontos na borda, como pode ser visto logo abaixo""",
      textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold)),
      
       Image.asset('assets/regiao.png'),
      
      Text("""\ny(x) é a solução da equação diferencial que satisfaz também as condições de contorno, que também são chamadas de condições iniciais. A camada de entrada da rede neural (input layer)  recebe esse vetor de pontos e a última camada nos dar a solução y(x). 
      A rede neural é treinada como a função de perda L, que desempenha um papel fundamental para a NN encontrar a melhor solução""", 
      textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold))
      
      
      ,Image.asset('assets/funcaoperda.png', width: 700,),
      
      Text("""\ny(x) essas funções medem "quão bem" a rede a EDP está sendo satisfeita pela y_NN. O treinamento é bem sucedido quando a rede neural encontra os melhores pesos e bias que solucionanm a equação diferencial.
      """, 
      textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold))

      
      ],
      
      
      
      
      
      ),






    );
  }
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Scroll Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrimeroTextoCard(texto: TextoEdo()[0]),
    );
  }
}


class PrimeroTextoCard extends StatelessWidget {
  final String texto; 
  const PrimeroTextoCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Builder(
        
        builder: (context) => Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 30, 8, 8)),
                  accountName: Text(''), 
                  accountEmail: Text('Explore mais'),
                  currentAccountPicture: Image.asset('assets/logo.jpg', width: 50,),
                ),
                ListTile(
                  title: Text('Menu principal'),
                  subtitle: Text(''),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/tela1', arguments: '');
                  },
                ),
                ListTile(
                  title: Text(Titulos()[1]),
                  subtitle: Text(''),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SegundoTextoCard(texto: TextoEdo()[1])));
                  },
                ),
                ListTile(
                  title: Text(Titulos()[2]),
                  subtitle: Text('teste'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TerceiroTextoCard(texto: TextoEdo()[2])));
                  },
                ),
                ListTile(
                  title: Text(Titulos()[3]),
                  subtitle: Text(''),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuartoTextoCard(texto: TextoEdo()[3])));
                  },
                ),
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
          ),
        ),
      ),
      appBar: AppBar(title: Text(Titulos()[0])),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/artificial.png', width: 150,),
                SizedBox(height: 30),
                 Column(
                children: [ResumoRedes()
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SegundoTextoCard extends StatelessWidget {
  final String texto; 
  const SegundoTextoCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Builder(
        builder: (context) => Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 30, 8, 8)),
                  accountName: Text(''), 
                  accountEmail: Text('Explore mais'),
                  currentAccountPicture: Image.asset('assets/logo.jpg', width: 50,),
                ),
                ListTile(
                  title: Text('Menu principal'),
                  subtitle: Text(''),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/tela1', arguments: '');
                  },
                ),
                ListTile(
                  title: Text(Titulos()[0]),
                  subtitle: Text(''),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PrimeroTextoCard(texto:  TextoEdo()[0],)));
                  },
                ),
               
                ListTile(
                  title: Text(Titulos()[3]),
                  subtitle: Text(''),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuartoTextoCard(texto: TextoEdo()[3],)));
                  },
                ),
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
          ),
        ),
      ),
      appBar: AppBar(title: Text(Titulos()[1])),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  //border: Border.all(color: Colors.blue, width: 2,),
                ),
                // retirada a logo do cabeçalho child: Image.asset('assets/logo.jpg', width: 150,),
              ),
              SizedBox(height: 50),
              Column(
                children: [ResumoEdo()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TerceiroTextoCard extends StatelessWidget {
  final String texto; 
  const TerceiroTextoCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Builder(
        builder: (context) => Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 30, 8, 8)),
                  accountName: Text(''), 
                  accountEmail: Text('Explore mais'),
                  currentAccountPicture: Image.asset('assets/logo.jpg', width: 50,),
                ),
                ListTile(
                  title: Text('Menu principal'),
                  subtitle: Text(''),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/tela1', arguments: '');
                  },
                ),
                ListTile(
                  title: Text(Titulos()[0]),
                  subtitle: Text(''),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PrimeroTextoCard(texto: TextoEdo()[0],)));
                  },
                ),
                ListTile(
                  title: Text(Titulos()[1]),
                  subtitle: Text(''),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SegundoTextoCard(texto: TextoEdo()[1],)));
                  },
                ),
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
          ),
        ),
      ),
      appBar: AppBar(title: Text(Titulos()[2])),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Image.asset('assets/logo.jpg', width: 150,),
              SizedBox(height: 50),
              ResumoPINNS()
            ],
          ),
        ),
      ),
    );
  }
}

class QuartoTextoCard extends StatefulWidget {
  final String texto;

  const QuartoTextoCard({Key? key, required this.texto}) : super(key: key);

  @override
  _QuartoTextoCardState createState() => _QuartoTextoCardState();
}

class _QuartoTextoCardState extends State<QuartoTextoCard> {
  TextEditingController _controller = TextEditingController();
  Uint8List? imageBytes;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> enviarEquacaoDiferencial() async {
    final url = 'https://ed88-35-196-196-253.ngrok-free.app/solve'; // URL do Ngrok

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "equation": _controller.text,
          "initial_conditions": "Condições iniciais aqui", // Adaptar conforme necessário
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final imageBase64 = data['solution_plot'];
        setState(() {
          imageBytes = base64Decode(imageBase64);
        });
      } else {
        throw Exception('Failed to load solution (${response.statusCode})');
      }
    } catch (e) {
      print('Error: $e');
      // Trate o erro conforme necessário
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enviar Equação Diferencial')),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Image.asset('assets/logo.jpg', width: 150),
              SizedBox(height: 30),
              Text(widget.texto, textAlign: TextAlign.justify),
              SizedBox(height: 30),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Digite a equação diferencial (ex: u' = -2*u)",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: enviarEquacaoDiferencial,
                child: Text("Enviar"),
              ),
              SizedBox(height: 20),
              if (imageBytes != null)
                Container(
                  width: 300,
                  height: 300,
                  child: Image.memory(imageBytes!),
                ),
            ],
          ),
        ),
      ),
    );
  }
}