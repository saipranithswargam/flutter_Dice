import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  const StyledText(this.text, {super.key});
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 28, color: Color.fromARGB(255, 255, 255, 255)),
    );
  }
}
