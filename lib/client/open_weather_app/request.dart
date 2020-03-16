import 'package:clima/models/location.dart';

class OpenWeatherAppRequest {
  Location location;

  final String _url = 'http://api.openweathermap.org/data/2.5/weather';

  final String _token = 'Enter your token here';

  OpenWeatherAppRequest(this.location);

  Map<String, String> _locationHeader() {
    final kConstantHeaders = {
      'appid': _token,
      'units': 'metric',
    };
    if (location.city != null) {
      return {'q': location.city, ...kConstantHeaders};
    }

    return {
      'lat': location.latitude.toString(),
      'lon': location.longitude.toString(),
      ...kConstantHeaders
    };
  }

  String getUrl() {
    var url = _url + '?';
    var headers = _locationHeader();
    headers.forEach((key, value) {
      url += key + '=' + value + '&';
    });
    return url.substring(0, url.length - 1);
  }
}
