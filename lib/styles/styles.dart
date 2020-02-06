import 'package:flutter/material.dart';

final kLocationScreenBoxDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('images/location_background.jpg'),
    fit: BoxFit.cover,
    colorFilter:
        ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.dstATop),
  ),
);
