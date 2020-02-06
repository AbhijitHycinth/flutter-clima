import 'package:clima/models/location.dart';

class OpenWeatherAppRequest {
  Location location;

  final String _url = 'http://api.openweathermap.org/data/2.5/weather';

  final String _token = 'd67124d4533de5ac2e7b7cc5da3712da';

  OpenWeatherAppRequest(this.location);

  Map<String, String> _locationHeader() {
    return {
      'lat': location.latitude.toString(),
      'lon': location.longitude.toString(),
      'appid': _token
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
