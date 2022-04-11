import 'package:flutter/material.dart';

class EditableViews extends StatefulWidget {
  var title;
  var value;

  EditableViews({Key? key, @required this.title, @required this.value})
      : super(key: key);

  @override
  State<EditableViews> createState() => _EditableViewsState();
}

class _EditableViewsState extends State<EditableViews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            labelText: widget.title,
            hintText: widget.value,
            hintStyle: const TextStyle(color: Colors.grey)),
        showCursor: true,
      ),
    );
  }
}
