import 'package:flutter/material.dart';

BoxDecoration appBox() {
  return const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
        Color.fromARGB(255, 83, 27, 23),
        Colors.black,
        Color.fromARGB(255, 24, 42, 72)
      ]));
}
