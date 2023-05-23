import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/data/providers/weather_provider.dart';
import 'package:weather_app/widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Default location to display weather

  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);
    final Weather? currentWeather = weatherProvider.currentWeather;
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: (currentWeather == null)
          ? const Center(child: Text("Enter valid location to fetch weather"))
          : Container(
              decoration: const BoxDecoration(
                gradient: darkGradient,
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: kToolbarHeight * 1.5,
                  ),
                  TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[50]!.withOpacity(0.3),
                      labelText: "Search Location",
                    ),
                    onFieldSubmitted: (value) {
                      weatherProvider.fetchWeather(value);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  WeatherCard(
                    location: currentWeather.location,
                    temperature: currentWeather.temperature,
                    windSpeed: currentWeather.windSpeed,
                    weather: currentWeather.weather,
                    weatherArtworkUrl:
                        "http:${currentWeather.weatherArtworkUrl}",
                  ),
                  const Spacer(),
                ],
              ),
            ),
    );
  }
}
