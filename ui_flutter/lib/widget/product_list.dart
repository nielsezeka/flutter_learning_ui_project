import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/product_model.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.products});
  final List<ProductModels> products;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          var product = products[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: InkWell(
              onTap: () {
              },
              child: ListTile(
                leading: Image.network(
                  product.image,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  product.detail,
                  style: Styles.title1,
                ),
                subtitle: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 90, 240, 85),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(product.price.toString()),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Text(product.offer ?? '')),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
