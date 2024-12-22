import 'package:flutter/material.dart';
import '../models/model.dart';

class AddProductPage extends StatefulWidget {
  final Function(FishingProduct) onProductAdded;

  AddProductPage({required this.onProductAdded});

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final _brandController = TextEditingController();
  final _typeController = TextEditingController();
  final _materialsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Добавить товар'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Название'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Описание'),
            ),
            TextField(
              controller: _priceController,
              decoration: const InputDecoration(labelText: 'Цена'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _imageUrlController,
              decoration: const InputDecoration(labelText: 'URL картинки'),
            ),
            TextField(
              controller: _brandController,
              decoration: const InputDecoration(labelText: 'Бренд'),
            ),
            TextField(
              controller: _typeController,
              decoration: const InputDecoration(labelText: 'Тип'),
            ),
            TextField(
              controller: _materialsController,
              decoration: const InputDecoration(labelText: 'Материалы'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final product = FishingProduct(
                  name: _nameController.text,
                  description: _descriptionController.text,
                  imageUrl: _imageUrlController.text,
                  price: double.parse(_priceController.text),
                  brand: _brandController.text,
                  type: _typeController.text,
                  materials: _materialsController.text,
                );
                widget.onProductAdded(product);
                Navigator.pop(context);
              },
              child: const Text('Добавить товар'),
            ),
          ],
        ),
      ),
    );
  }
}
