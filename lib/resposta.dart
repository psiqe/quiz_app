import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(
    this.texto,
    this.quandoSelecionado, 
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          fixedSize: const Size( 320, 20 ),
          elevation: 7,
        ),
        child: Text(texto),
      ),
    );
  }
}