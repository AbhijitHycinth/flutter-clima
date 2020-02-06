import 'package:clima/client/open_weather_app/client.dart';
import 'package:clima/models/location.dart';

class WeatherService {
  OpenWeatherAppClient _client;

  WeatherService(Location location) {
    _client = OpenWeatherAppClient(location);
  }

  dynamic getData() {
    return _client.perform();
  }
}
