import 'package:flutter/material.dart';
import '../models/model.dart';

class ProductDetailPage extends StatelessWidget {
  final FishingProduct product;

  ProductDetailPage({super.key, required this.product});
  final textFont = TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            const SizedBox(height: 20),
            Text(
              product.description,
              style: textFont,
            ),
            const SizedBox(height: 20),
            Text(
              'Цена: ${product.price} рублей',
              style: textFont.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Бренд: ${product.brand}',
              style: textFont,
            ),
            const SizedBox(height: 10),
            Text(
              'Тип: ${product.type}',
              style: textFont,
            ),
            const SizedBox(height: 10),
            Text(
              'Материалы: ${product.materials}',
              style: textFont,
            ),
          ],
        ),
      ),
    );
  }
}
