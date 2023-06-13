import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget{

  void responder() {
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
     final perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?',
     ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas.elementAt(0)),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: (){ print('Resposta 2'); },
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: () => print("Resposta 3"),
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }

}