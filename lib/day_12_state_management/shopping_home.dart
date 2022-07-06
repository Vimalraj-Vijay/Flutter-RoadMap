import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_12_state_management/screens/product_overview_screen.dart';

class ShoppingHome extends StatelessWidget {
  static const id = "/shoppingHome";
  const ShoppingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProductOverviewScreen();
  }
}
