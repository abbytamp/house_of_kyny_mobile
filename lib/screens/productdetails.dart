import 'package:flutter/material.dart';
import 'package:house_of_kyny_mobile/models/product_entry.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              "Description: ${product.fields.description}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              "Price: \$${product.fields.price}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              "Rating: ${product.fields.quantity}/5",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}