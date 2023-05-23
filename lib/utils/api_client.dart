import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  static const String baseUrl = 'http://api.weatherapi.com/v1';
  static const String apiKey = 'c922ec986f7e48dab01132723232305';

  Future<Map<String, dynamic>> getWeatherData(String location) async {
    final url =
        Uri.parse('$baseUrl/current.json?key=$apiKey&q=$location&aqi=no');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return jsonData;
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}
