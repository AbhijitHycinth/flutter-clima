import 'package:clima/models/weather.dart';
import 'package:clima/screens/city_screen.dart';
import 'package:clima/styles/styles.dart';
import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  dynamic weatherData;

  LocationScreen.withWeather(dynamic this.weatherData);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weatherModel;

  @override
  void initState() {
    super.initState();
    weatherModel = WeatherModel(widget.weatherData);
  }

  void _moveToCitySelectionScreen() async {
    var weatherData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CityScreen()),
    );

    setState(() {
      weatherModel = WeatherModel(weatherData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kLocationScreenBoxDecoration,
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: _moveToCitySelectionScreen,
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      weatherModel.temperature + '°C',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherModel.getWeatherIcon(),
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  weatherModel.getMessage() + ' in ${weatherModel.name}',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
