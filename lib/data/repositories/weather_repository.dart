import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/utils/api_client.dart';

class WeatherRepository {
  final ApiClient _apiClient = ApiClient();

  Future<Weather> getWeather(String location) async {
    final response = await _apiClient.getWeatherData(location);
    // Parse the API response and create a Weather object
    final weather = Weather(
      location: response['location']['name'],
      temperature: response['current']['temp_c'].toDouble(),
      windSpeed: response['current']['wind_kph'].toDouble(),
      weatherArtworkUrl: response['current']['condition']['icon'],
      weather: response['current']['condition']['text'],
    );
    return weather;
  }
}
