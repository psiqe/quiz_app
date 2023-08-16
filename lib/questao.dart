import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  
  final String texto;
  
  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(25),
      child: Text(
          texto,
          style: const TextStyle(fontSize: 20 ),
          textAlign: TextAlign.center,
        ),
    );
    
  }
}