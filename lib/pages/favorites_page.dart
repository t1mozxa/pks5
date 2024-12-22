import 'package:flutter/material.dart';
import '../models/model.dart';

class FavoritesPage extends StatelessWidget {
  final List<FishingProduct> favorites; // Получаем список избранных товаров

  const FavoritesPage({Key? key, required this.favorites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Избранное'),
      ),
      body: favorites.isEmpty
          ? const Center(child: Text('Ваши избранные товары пусты'))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(favorites[index].name),
                  subtitle: Text(favorites[index].description),
                );
              },
            ),
    );
  }
}
