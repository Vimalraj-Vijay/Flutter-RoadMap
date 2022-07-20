import 'package:flutter/material.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';

class EditProduct extends StatefulWidget {
  static const id = "/editProduct";

  const EditProduct({Key? key}) : super(key: key);

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar("Edit product", context),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
            child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter the title",
                  labelText: "Title",
                ),
                textInputAction: TextInputAction.next,
              )
            ],
          ),
        )),
      ),
    );
  }
}
