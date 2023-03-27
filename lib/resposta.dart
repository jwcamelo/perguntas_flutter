import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoPressionado;

  const Resposta(this.texto, this.quandoPressionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child:
            ElevatedButton(onPressed: quandoPressionado, child: Text(texto)));
  }
}
