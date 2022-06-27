import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_12_state_management/provider/products_provider.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatelessWidget {
  static const id = "/productDetail";

  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct =
        Provider.of<ProductProvider>(context, listen: false).getProductById(id);
    return Scaffold(
      appBar: getAppBar(loadedProduct.title, context),
      body: Container(),
    );
  }
}
