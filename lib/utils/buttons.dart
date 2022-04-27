import 'package:flutter/material.dart';

Widget getElevatedButton(String text, VoidCallback onPressed) {
  return Center(
    child: Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
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
