import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/data/providers/weather_provider.dart';

void main() {
  group('WeatherProvider', () {
    test('Should fetch weather data for a location', () async {
      final weatherProvider = WeatherProvider();
      await weatherProvider.fetchWeather('New York');

      final Weather? currentWeather = weatherProvider.currentWeather;
      expect(currentWeather, isNotNull);
      expect(currentWeather!.location, 'New York');
    });

    test('Should set current weather', () {
      final weatherProvider = WeatherProvider();
      final weather = Weather(
        location: 'New York',
        temperature: 28.0,
        windSpeed: 15.1,
        weather: 'Partly Cloudy',
        weatherArtworkUrl: 'http://example.com/image.png',
      );

      weatherProvider.setCurrentWeather(weather);

      final Weather? currentWeather = weatherProvider.currentWeather;
      expect(currentWeather, isNotNull);
      expect(currentWeather!.location, 'New York');
      expect(currentWeather.temperature, 28.0);
      expect(currentWeather.windSpeed, 15.1);
      expect(currentWeather.weather, 'Partly Cloudy');
      expect(currentWeather.weatherArtworkUrl, 'http://example.com/image.png');
    });
  });
}
