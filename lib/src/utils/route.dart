import 'package:flutter/material.dart';
import 'package:memory/src/pages/game_board.dart';
import 'package:memory/src/pages/home_page.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (BuildContext context) => const HomePage(),
    'gameon': (BuildContext context) => const GameBoard()
  };
}

Widget defaultRoute() {
  return const HomePage();
}
