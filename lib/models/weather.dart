class WeatherModel {
  Map<String, dynamic> weather;
  Map<String, dynamic> main;
  Map<String, dynamic> wind;
  String name;
  String temperature;

  WeatherModel(dynamic weatherData) {
    this.weather = weatherData["weather"][0];
    this.main = weatherData["main"];
    this.temperature = (weatherData["main"]["temp"].toInt()).toString();
    this.wind = weatherData["wind"];
    this.name = weatherData["name"];
  }

  String getWeatherIcon() {
    var condition = weather["id"];
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage() {
    var temp = int.parse(temperature);
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
