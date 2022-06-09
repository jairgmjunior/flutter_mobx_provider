import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class BotaoControleTempo extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPressed;

  const BotaoControleTempo({Key? key, this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(5),
          primary: store.estaTrabalhando() ? Colors.red : Colors.green),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
