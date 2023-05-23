# Weather App

This is a Flutter weather app that allows users to search for current weather information using the weatherapi. The app displays the location, temperature, and wind speed of the searched location along with relevant weather artwork.

## Features

- Search for current weather using the weatherapi
- Display location, temperature, and wind speed
- Show weather artwork based on the weather condition

## Packages Used

- [http](https://pub.dev/packages/http): Used to make HTTP requests to the weatherapi.
- [provider](https://pub.dev/packages/provider): Used for state management in the app.

## Getting Started

To run the app locally, follow these steps:

1. Make sure you have Flutter installed. If not, you can install Flutter by following the [Flutter installation guide](https://flutter.dev/docs/get-started/install).

2. Clone this repository to your local machine using the following command:

3. Navigate to the project directory:

4. Fetch the dependencies by running the following command: flutter pub get
5. Connect a device or start an emulator.

6. Run the app using the following command:flutter run
7. he app should launch on your device or emulator.

## Folder Structure

The project follows the following folder structure:

lib
  data
    models
      weather.dart
    providers
      weather_provider.dart
    repositories
      weather_repository.dart
   screens
     home_screen.dart
    utils
      api_client.dart
    widgets
      weather_card.dart
  main.dar


## API Key

The app uses the weatherapi to fetch weather data. Make sure to obtain an API key from [weatherapi](https://www.weatherapi.com/) and replace the placeholder API key in the `lib/utils/api_client.dart` file with your own API key.

```dart
static const String apiKey = 'YOUR_API_KEY';

Replace `<repository-url>` with the URL of your project's repository.

Make sure to update the package versions and API key instructions if there are any changes in the future.

Feel free to modify the README file according to your project's specific details and requirements.

Let me know if you need any further assistance!
