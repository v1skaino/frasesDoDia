import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _frases = [
    "Os erros são os portais da descoberta.",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.",
    "A verdadeira viagem de descobrimento não consiste em procurar novas paisagens, e sim em ter novos olhos",
    "Se um homem não descobriu nada pelo que morreria, não está pronto para viver.",
    "Perdoar é libertar o prisioneiro... e descobrir que o prisioneiro era você.",
    "No fundo de um buraco ou de um poço, acontece descobrir-se as estrelas.",
    "Aprender sem pensar é um trabalho perdido; pensar sem aprender é arriscado.",
    "Acredite em si próprio e chegará um dia em que os outros não terão outra escolha senão acreditar com você.",
    "Quer você acredite que consiga fazer uma coisa ou não, você está certo.",
    "Quantos vivem toda a vida sem descobrir o que sabem e amam? Tantos. Não ser um desses é essa a tua missão.",
    "Não se preocupe em entender, viver ultrapassa qualquer entendimento.",
    "Fique feliz nesse exato momento. Porque esse exato momento é a sua vida.",
    "O perdão é a forma final de amor.",
    "É melhor ser odiado por aquilo que você é do que ser amado por aquilo que não é.",
    "Quando alguma coisa é importante o suficiente, nós fazemos com que ela aconteça mesmo que tudo esteja contra.",
    "Não importa o quão devagar você caminha, desde que jamais pare de caminhar.",
    "A vida é uma grande aventura ou não é nada.",
    "No final, não são os anos da sua vida que contam, mas a vida que aconteceu naqueles anos.",
    "Nem todo mundo pode fazer coisas grandiosas. Mas todos podemos fazer pequenas coisas com grande amor.",
    "Amar não é olhar um para o outro, é olhar juntos na mesma direção.",
    "Lutar pelo amor é bom, mas alcançá-lo sem luta é melhor.",
    "Ser profundamente amado por alguém te dá forças, enquanto amar alguém profundamente te dá coragem.",
    "A distância faz ao amor aquilo que o vento faz ao fogo: apaga o pequeno, inflama o grande.",
    "A suprema felicidade da vida é ter a convicção de que somos amados.",
    "Nascemos para amar. O amor é o princípio da existência e o seu único fim.",
    "Pouca coisa é necessária para transformar inteiramente uma vida: amor no coração e sorriso nos lábios.",
    "Não há lugar que seja escuro demais para que a luz de Deus não entre, nem coração que seja duro demais que não possa ser atingido pela chama do seu amor.",
  ];

  final _autores = [
    "Roberto Shinyashiki",
    "James Joyce",
    "Marcel Proust",
    "Martin Luther King",
    "Robert Muller",
    "Aristóteles",
    "Confucius",
    "Cynthia Kersey",
    "Henry Ford",
    "Richard Bach",
    "Clarice Lispector",
    "Omar Khayyam",
    "Reinhold Niebuhr",
    "Andre Gide",
    "Elon Musk",
    "Confucius",
    "Helen Keller",
    "Abraham Lincoln",
    "Mother Teresa of Calcutta",
    "Antoine de Saint-Exupéry",
    "William Shakespeare",
    "Lao Tzu",
    "Roger Bussy-Rabutin",
    "Victor Hugo",
    "Benjamin Disraeli",
    "Martin Luther King",
    "Sammy Tippit"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase";
  var _autorDaFrase = " ";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt( _frases.length );
    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
      _autorDaFrase = "...${_autores[ numeroSorteado ]}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.jpeg"),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                  child: Text(
                   "$_fraseGerada \n$_autorDaFrase",
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ),
            ElevatedButton( 
              child: const Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              ),
              onPressed: _gerarFrase,
            ),
          ],
        ),
        ],
        ),
      ),
    );
  }
}