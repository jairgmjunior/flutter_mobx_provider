import 'package:flutter/material.dart';
import 'package:pomodoro/components/widgets/ElevatedButtonTempo.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? incrementar;
  final void Function()? decrementar;

  const EntradaTempo(
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
          ElevatedButtonTempo(icon: Icons.arrow_upward, onPressed: incrementar),
          Text(
            '$valor min',
            style: const TextStyle(fontSize: 18),
          ),
          ElevatedButtonTempo(
              icon: Icons.arrow_downward, onPressed: decrementar),
        ]),
      ],
    );
  }
}
