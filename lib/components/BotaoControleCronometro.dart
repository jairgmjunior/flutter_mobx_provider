import 'package:flutter/material.dart';

class BotaoControleCronometro extends StatelessWidget {
  final String texto;
  final IconData icon;
  final void Function()? click;

  const BotaoControleCronometro(
      {Key? key, required this.texto, required this.icon, this.click})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        ),
        onPressed: click,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                icon,
                size: 25,
              ),
            ),
            Text(texto),
          ],
        ));
  }
}
