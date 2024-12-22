import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Профиль'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'ФИО'),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Почта'),
            ),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Телефон'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Сохранение данных профиля
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Данные сохранены')),
                );
              },
              child: const Text('Сохранить'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
