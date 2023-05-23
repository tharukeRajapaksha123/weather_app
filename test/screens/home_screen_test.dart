import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/data/providers/weather_provider.dart';
import 'package:weather_app/screens/home_screen.dart';

void main() {
  group('HomeScreen', () {
    testWidgets(
        'Should display "Enter valid location to fetch weather" message when no weather data available',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ChangeNotifierProvider(
              create: (_) => WeatherProvider(),
              child: HomeScreen(),
            ),
          ),
        ),
      );

      expect(
          find.text('Enter valid location to fetch weather'), findsOneWidget);
    });

    testWidgets('Should display weather card when weather data is available',
        (WidgetTester tester) async {
      final weatherProvider = WeatherProvider();
      weatherProvider.setCurrentWeather(
        Weather(
          location: 'New York',
          temperature: 28.0,
          windSpeed: 15.1,
          weather: 'Partly Cloudy',
          weatherArtworkUrl: 'http://example.com/image.png',
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ChangeNotifierProvider.value(
              value: weatherProvider,
              child: HomeScreen(),
            ),
          ),
        ),
      );

      expect(find.text('Enter valid location to fetch weather'), findsNothing);
      expect(find.text('New York'), findsOneWidget);
      expect(find.text('28.0°C'), findsOneWidget);
      expect(find.text('15.1 km/h'), findsOneWidget);
      expect(find.text('Partly Cloudy'), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('Should call fetchWeather method when location is submitted',
        (WidgetTester tester) async {
      final weatherProvider = WeatherProvider();

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ChangeNotifierProvider.value(
              value: weatherProvider,
              child: HomeScreen(),
            ),
          ),
        ),
      );

      final searchFieldFinder = find.byType(TextFormField);
      await tester.enterText(searchFieldFinder, 'New York');
      await tester.testTextInput.receiveAction(TextInputAction.done);

      // Validate that the fetchWeather method is called with the correct value
      expect(weatherProvider.currentWeather, isNotNull);
      expect(weatherProvider.currentWeather!.location, 'New York');
    });
  });
}
