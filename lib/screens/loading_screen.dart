import 'package:clima/models/location.dart';
import 'package:clima/services/weather_service.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  WeatherService service;

  void _getLocation() async {
    var position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    service = WeatherService(Location(position));
    service.getData();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LocationScreen()),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
