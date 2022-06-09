import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/BotaoControleCronometro.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(builder: (_) {
      return Container(
        color: store.estaTrabalhando() ? Colors.red : Colors.green,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.estaTrabalhando()
                    ? 'Hora de Trabalhar'
                    : 'Hora de Descansar',
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
                style: const TextStyle(fontSize: 120, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (!store.iniciado)
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: BotaoControleCronometro(
                          texto: 'Iniciar',
                          icon: Icons.play_arrow,
                          click: store.iniciar),
                    ),
                  if (store.iniciado)
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: BotaoControleCronometro(
                          texto: 'Parar', icon: Icons.stop, click: store.parar),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: BotaoControleCronometro(
                      texto: 'Reiniciar',
                      icon: Icons.refresh,
                      click: store.reiniciar,
                    ),
                  ),
                ],
              ),
            ]),
      );
    });
  }
}
