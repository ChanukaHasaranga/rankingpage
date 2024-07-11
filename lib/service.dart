// api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://172.20.10.2:6060/time'; // Update baseUrl as needed

  Future<int> getMinutesById(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/minutes/$id'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load minutes');
    }
  }

  // Other methods remain unchanged
}
