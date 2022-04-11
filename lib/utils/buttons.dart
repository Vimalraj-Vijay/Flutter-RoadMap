import 'package:flutter/material.dart';
import 'package:flutter_roadmap/utils/GlobalContext.dart';

class Buttons {

  static Widget getElevatedButton(String text, VoidCallback onPressed) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black87),
            backgroundColor: MaterialStateProperty.all(Colors.amber),
            padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
          ),
        ),
      ),
    );
  }
}
