import 'package:flutter/material.dart';
import 'package:pks3/pages/product_detail.dart';
import '../components/add_product_page.dart';
import '../models/model.dart';
import '../components/item.dart';

class HomePage extends StatelessWidget {
  final Function(FishingProduct) onFavoriteToggle; 
  final List<FishingProduct> favorites; 

  const HomePage({
    Key? key,
    required this.onFavoriteToggle, 
    required this.favorites, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(
          child: Text(
            'Рыболовные товары',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: fishingProducts.length,
        itemBuilder: (context, index) {
          final product = fishingProducts[index];
          final isFavorite = favorites.contains(product); 

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
            child: Item(
              product: product,
              isFavorite: isFavorite,
              onFavoriteToggle: onFavoriteToggle,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProductPage(onProductAdded: (FishingProduct ) {  },)),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
