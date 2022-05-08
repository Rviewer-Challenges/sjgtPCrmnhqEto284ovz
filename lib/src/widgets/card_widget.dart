import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final Image front;
  final Image back;
  final int value;

  const CardWidget(
      {required this.value, required this.front, required this.back, Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CardWidget();
}

class _CardWidget extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [widget.front],
    );
  }
}
