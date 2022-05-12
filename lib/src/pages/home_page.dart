import 'package:google_fonts/google_fonts.dart';
import 'package:memory/src/utils/container_decoration.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  _HomePage() : super();
  bool play = true;

  void changePlay() {
    play = !play;
  }

  void gameOn(String dificultad) {
    Navigator.pushNamed(context, 'gameon', arguments: dificultad);
  }

  Widget stack() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: MediaQuery.of(context).size.width,
        ),
        Text(
          'Memory game',
          textAlign: TextAlign.right,
          style: GoogleFonts.mansalva(
            textStyle: const TextStyle(
                color: Color.fromARGB(255, 243, 193, 88), fontSize: 32),
          ),
        ),
      ],
    );
  }

  Widget paddingButtons() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
          Visibility(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 243, 193, 88),
                  minimumSize: const Size(150, 50)),
              onPressed: () => setState(() {
                changePlay();
              }),
              child: const Text(
                'Jugar',
                style: TextStyle(color: Colors.black),
              ),
            ),
            visible: play,
            replacement: buttons(),
          )
        ],
      ),
    );
  }

  Widget buttons() {
    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 243, 193, 88),
                minimumSize: const Size(150, 40)),
            onPressed: () => gameOn('facil'),
            child: const Text(
              'Facil',
              style: TextStyle(color: Colors.black),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 243, 193, 88),
                minimumSize: const Size(150, 40)),
            onPressed: () => gameOn('normal'),
            child: const Text(
              'Normal',
              style: TextStyle(color: Colors.black),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 243, 193, 88),
                minimumSize: const Size(150, 40)),
            onPressed: () => gameOn('dificil'),
            child: const Text(
              'Dificil',
              style: TextStyle(color: Colors.black),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: appBox(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [stack(), paddingButtons()],
          )
        ],
      ),
    ));
  }
}
