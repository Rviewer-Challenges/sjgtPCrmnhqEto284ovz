import 'package:flutter/material.dart';
import 'package:memory/src/utils/container_decoration.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GameBoard();
}

class _GameBoard extends State<GameBoard> {
  _GameBoard() : super();

  int moves = 0;

  //float btn para regresar a la pantalla de seleccion de dificultad.
  Widget floatBtn() {
    return FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 24, 42, 72),
        mini: true,
        onPressed: () => Navigator.pop(context),
        child:
            const Icon(Icons.cancel, color: Color.fromARGB(255, 243, 193, 88)));
  }

  Widget gameBoard() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(15), right: Radius.circular(15)),
          color: Colors.white.withOpacity(0.35)),
      padding: const EdgeInsets.only(left: 10, right: 10),
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Expanded(
              child: Center(
                  child: Text('01:00',
                      style: TextStyle(color: Colors.black, fontSize: 48)))),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$moves',
                      style:
                          const TextStyle(color: Colors.black, fontSize: 32)),
                  const Text('Movimientos')
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final difficulty = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      floatingActionButton: floatBtn(),
      body: Container(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: appBox(),
        child: Flex(
          direction: Axis.vertical,
          children: [gameBoard()],
        ),
      ),
    );
  }
}
