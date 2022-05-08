import 'package:flutter/material.dart';
import 'package:memory/src/pages/home_page.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (BuildContext context) => const HomePage(),
  };
}

Widget defaultRoute() {
  return const HomePage();
}
