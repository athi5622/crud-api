import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_management/providers/user_provider.dart';

class EditUserScreen extends StatelessWidget {
  final String id;
  final String name;
  final String email;
  final String address;

  const EditUserScreen({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: name);
    final emailController = TextEditingController(text: email);
    final addressController = TextEditingController(text: address);

    return Scaffold(
      appBar: AppBar(title: const Text('Edit User')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: addressController,
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<UserProvider>(context, listen: false).updateUser(
                  id,
                  nameController.text,
                  emailController.text,
                  addressController.text,
                );
                Navigator.pop(context);
              },
              child: const Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
