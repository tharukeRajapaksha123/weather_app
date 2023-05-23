import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/data/repositories/weather_repository.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherRepository _repository = WeatherRepository();
  Weather? _currentWeather;

  Weather? get currentWeather => _currentWeather;

  Future<void> fetchWeather(String location) async {
    try {
      _currentWeather = await _repository.getWeather(location);
      notifyListeners();
    } catch (e) {
      // Handle error or show error message
    }
  }
}
