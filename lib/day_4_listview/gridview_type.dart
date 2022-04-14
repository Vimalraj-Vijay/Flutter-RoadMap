import 'package:flutter/material.dart';

import '../utils/strings.dart';

class GridviewType extends StatelessWidget {
  static const id = "/gridview";
  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();

  GridviewType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.gridview),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: _getGridViewTypes,
          itemCount: myProducts.length,
        ),
      ),
    );
  }

  Widget _getGridViewTypes(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        myProducts[index]["name"],
        style: const TextStyle(color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(15)),
    );
  }
}
