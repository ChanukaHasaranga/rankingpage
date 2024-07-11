import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rankingpage/userservice.dart/userdata.dart';

class UserServiceranking {
  final String baseUrl;

  UserServiceranking({required this.baseUrl});

  Future<List<Userranking>> getUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((dynamic json) => Userranking.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }


 Future<Userranking> getUserById(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/user/$id'));
    print('API call status code: ${response.statusCode}');
    print('API call response: ${response.body}');
    if (response.statusCode == 200) {
      return Userranking.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load user');
    }


 }


  

  Future<Userranking> createUser(Userranking user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );
    if (response.statusCode == 201) {
      return Userranking.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create user');
    }
  }

  Future<Userranking> updateUser(int id, Userranking user) async {
    final response = await http.put(
      Uri.parse('$baseUrl/users/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );
    if (response.statusCode == 200) {
      return Userranking.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to update user');
    }
  }

  Future<void> deleteUser(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/users/$id'));
    if (response.statusCode != 204) {
      throw Exception('Failed to delete user');
    }
  }
}
