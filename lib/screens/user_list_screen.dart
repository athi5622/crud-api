import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_management/providers/user_provider.dart';
import 'package:user_management/screens/create_user_screen.dart';
import 'package:user_management/screens/edit_user_screen.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CreateUserScreen()),
              );
            },
          ),
        ],
      ),
      body: Consumer<UserProvider>(
        builder: (_, provider, __) {
          return provider.users.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: provider.users.length,
                  itemBuilder: (_, index) {
                    final user = provider.users[index];
                    return ListTile(
                      title: Text(user['name']),
                      subtitle: Text(user['email']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => EditUserScreen(
                                    id: user['id'],
                                    name: user['name'],
                                    email: user['email'],
                                    address: user['address'],
                                  ),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              provider.deleteUser(user['id']);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
