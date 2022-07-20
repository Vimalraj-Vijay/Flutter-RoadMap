import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_12_state_management/provider/products.dart';

import '../screens/edit_product.dart';

class ManageProductItem extends StatelessWidget {
  final Products products;

  const ManageProductItem({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          fit: StackFit.passthrough,
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image(
                image: NetworkImage(products.imageUrl),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black87.withAlpha(150)),
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          products.title,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$ ${products.price.toStringAsFixed(2)}",
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, EditProduct.id);
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
