import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  _HomePage({Key? key}) : super();
  bool play = true;

  void changePlay() {
    play = !play;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
            Color.fromARGB(255, 83, 27, 23),
            Colors.black,
            Color.fromARGB(255, 24, 42, 72)
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
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
                          color: Color.fromARGB(255, 243, 193, 88),
                          fontSize: 32),
                    ),
                  ),
                ],
              ),
              Column(
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
                    replacement: Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(150, 15),
                                primary: const Color.fromARGB(255, 38, 86, 40)),
                            onPressed: () => print('easy'),
                            child: const Text('Facil')),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(150, 15),
                                primary: const Color.fromARGB(255, 37, 44, 76)),
                            onPressed: () => print('normal'),
                            child: const Text('Normal')),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(150, 15),
                                primary: const Color.fromARGB(255, 82, 38, 27)),
                            onPressed: () => print('dificil'),
                            child: const Text('Dificil')),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(75, 10),
                                primary: const Color.fromARGB(255, 38, 40, 38)),
                            onPressed: () => setState(() => changePlay()),
                            child: const Text('Atras')),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
