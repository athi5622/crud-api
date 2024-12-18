import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onConfirm;

  const CustomDialog({
    required this.title,
    required this.content,
    required this.onConfirm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          onPressed: onConfirm,
          child: const Text('Confirm'),
        ),
      ],
    );
  }
}
