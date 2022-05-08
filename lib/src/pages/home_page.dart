import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
              child: Text('hola'),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Boton 1'),
                        Text('Botton 2'),
                        Text('Botton 3')
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    ));
  }
}
