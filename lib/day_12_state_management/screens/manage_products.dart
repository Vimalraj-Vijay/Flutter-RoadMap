import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_12_state_management/provider/products_provider.dart';
import 'package:flutter_roadmap/day_12_state_management/widgets/app_drawer.dart';
import 'package:flutter_roadmap/day_12_state_management/widgets/manage_product_item.dart';
import 'package:provider/provider.dart';

class ManageProducts extends StatelessWidget {
  static const id = "/manageProducts";

  const ManageProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Products"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemBuilder: (_, index) =>
            ManageProductItem(products: productData.products[index]),
        itemCount: productData.products.length,
      ),
    );
  }
}
