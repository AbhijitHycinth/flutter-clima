import 'dart:convert';

import 'package:http/http.dart';

class OpenWeatherAppResponse {
  dynamic responseData;
  int statusCode;

  OpenWeatherAppResponse(Response response) {
    responseData = jsonDecode(response.body);
    statusCode = response.statusCode;
  }
}
