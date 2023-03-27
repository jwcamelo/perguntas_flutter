import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado(
      {required this.pontuacao,
      required this.reiniciarQuestionario,
      super.key});

  String get fraseResultado {
    if (pontuacao > 25) {
      return 'Parabéns, você é um Jedi';
    } else if (pontuacao > 15) {
      return 'Parabéns, impressionante!';
    } else if (pontuacao > 8) {
      return 'Parabéns, você é bom!';
    } else {
      return 'Parabéns!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: const TextStyle(fontSize: 28),
        )),
        BackButton(onPressed: reiniciarQuestionario),
      ],
    );
  }
}
