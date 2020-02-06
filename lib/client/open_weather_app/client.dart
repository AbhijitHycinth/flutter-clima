import 'package:clima/client/open_weather_app/request.dart';
import 'package:clima/client/open_weather_app/response.dart';
import 'package:http/http.dart';

class OpenWeatherAppClient {
  OpenWeatherAppRequest _request;

  OpenWeatherAppClient(location) {
    _request = new OpenWeatherAppRequest(location);
  }

  dynamic perform() async {
    Response response = await get(_request.getUrl());
    return OpenWeatherAppResponse(response).responseData;
  }
}
