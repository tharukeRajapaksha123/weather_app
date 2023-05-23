import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';

class WeatherCard extends StatelessWidget {
  final String location;
  final double temperature;
  final double windSpeed;
  final String weatherArtworkUrl;
  final String weather;
  WeatherCard({
    required this.location,
    required this.temperature,
    required this.windSpeed,
    required this.weatherArtworkUrl,
    required this.weather,
  });

  LinearGradient gradient() {
    if (weather.contains("sunny")) {
      return skyGradient;
    }
    if (weather.contains("rainy")) {
      return gloomySkyGradient;
    }
    if (weather.contains("cloudy")) {
      return cloudyDayGradient;
    }
    return skyGradient;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: gradient(),
        borderRadius: BorderRadius.circular(12),
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.network(weatherArtworkUrl),
          Text(
            'Weather: $weather',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8),
          Text('Location: $location'),
          SizedBox(height: 8),
          Text('Temperature: $temperature°C'),
          SizedBox(height: 8),
          Text('Wind Speed: $windSpeed km/h'),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
