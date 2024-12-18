import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_management/providers/user_provider.dart';
import 'package:user_management/screens/user_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProvider()..fetchUsers(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'User Management',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const UserListScreen(),
      ),
    );
  }
}
