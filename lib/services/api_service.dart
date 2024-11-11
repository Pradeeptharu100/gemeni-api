import 'dart:convert';

import 'package:http/http.dart' as http;

class GenminiApiService {
  final String apiKey = 'AIzaSyDyXE5ZjHImJoxH7xlUz9oGHmRC4xxO-1k';

  Future<void> connectToGenmini() async {
    final url = Uri.parse('https://api.genmini.com/v1/your-endpoint');
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Data from Genmini: $data');
    } else {
      print('Error: ${response.statusCode} - ${response.reasonPhrase}');
    }
  }
}
