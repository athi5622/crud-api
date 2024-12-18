import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://crud-api-ebiu.onrender.com/';

  Future<List<dynamic>> getUsers() async {
    final response = await http.get(Uri.parse('${baseUrl}api/user/viewcreatedusers'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<void> createUser(String name, String email, String address) async {
    final response = await http.post(
      Uri.parse('${baseUrl}api/user/create'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'name': name, 'email': email, 'address': address}),
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to create user');
    }
  }

  Future<void> updateUser(String id, String name, String email, String address) async {
    final response = await http.put(
      Uri.parse('${baseUrl}api/user/update/$id'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'name': name, 'email': email, 'address': address}),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to update user');
    }
  }

  Future<void> deleteUser(String id) async {
    final response = await http.delete(Uri.parse('${baseUrl}api/user/delete/$id'));
    if (response.statusCode != 200) {
      throw Exception('Failed to delete user');
    }
  }
}
