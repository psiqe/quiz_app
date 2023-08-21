import 'package:flutter/material.dart';
// import './questao.dart';
// import './resposta.dart';
import './resultado.dart';
import './questionario.dart';

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {"texto": "Roxo", "pontuacao": 10},
        {"texto": "Laranja", "pontuacao": 5},
        {"texto": "Verde", "pontuacao": 3},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {"texto": "Cachorro", "pontuacao": 10},
        {"texto": "Pássaro", "pontuacao": 7},
        {"texto": "Gato", "pontuacao": 5},
      ]
    },
    {
      'texto': 'Qual é o seu livro favorito?',
      'respostas': [
        {"texto": "Sapiens", "pontuacao": 9},
        {"texto": "1984", "pontuacao": 2},
        {"texto": "Código Limpo", "pontuacao": 10},
      ]
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            :  Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
