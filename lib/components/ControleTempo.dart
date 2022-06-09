import 'package:flutter/material.dart';
import 'package:pomodoro/components/BotaoControleTempo.dart';

class ControleTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? incrementar;
  final void Function()? decrementar;

  const ControleTempo(
      {Key? key,
      required this.titulo,
      required this.valor,
      this.incrementar,
      this.decrementar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          BotaoControleTempo(icon: Icons.arrow_upward, onPressed: incrementar),
          Text(
            '$valor min',
            style: const TextStyle(fontSize: 18),
          ),
          BotaoControleTempo(
              icon: Icons.arrow_downward, onPressed: decrementar),
        ]),
      ],
    );
  }
}
