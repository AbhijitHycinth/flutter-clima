import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;
  String city;

  Location(Position position) {
    this.longitude = position.longitude;
    this.latitude = position.latitude;
  }

  Location.withCity(this.city);
}
