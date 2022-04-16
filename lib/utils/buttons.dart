import 'package:flutter/material.dart';

class Buttons {
  static Widget getElevatedButton(String text, VoidCallback onPressed) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black87),
          backgroundColor: MaterialStateProperty.all(Colors.amber),
          padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
        ),
      ),
    );
  }
}
