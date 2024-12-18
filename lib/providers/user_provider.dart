import 'package:flutter/material.dart';
import 'package:user_management/services/api_service.dart';

class UserProvider with ChangeNotifier {
  List<dynamic> _users = [];
  final ApiService _apiService = ApiService();

  List<dynamic> get users => _users;

  Future<void> fetchUsers() async {
    _users = await _apiService.getUsers();
    notifyListeners();
  }

  Future<void> addUser(String name, String email, String address) async {
    await _apiService.createUser(name, email, address);
    await fetchUsers();
  }

  Future<void> updateUser(String id, String name, String email, String address) async {
    await _apiService.updateUser(id, name, email, address);
    await fetchUsers();
  }

  Future<void> deleteUser(String id) async {
    await _apiService.deleteUser(id);
    await fetchUsers();
  }
}
