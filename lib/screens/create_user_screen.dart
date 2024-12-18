import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_management/providers/user_provider.dart';

class CreateUserScreen extends StatelessWidget {
  const CreateUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final addressController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Create User')),
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
                Provider.of<UserProvider>(context, listen: false).addUser(
                  nameController.text,
                  emailController.text,
                  addressController.text,
                );
                Navigator.pop(context);
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}
