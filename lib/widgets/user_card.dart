import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String email;
  final String address;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const UserCard({
    required this.name,
    required this.email,
    required this.address,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(email),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: onEdit,
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
