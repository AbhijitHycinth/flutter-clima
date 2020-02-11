import 'package:flutter/material.dart';

final kLocationScreenBoxDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('images/location_background.jpg'),
    fit: BoxFit.cover,
    colorFilter:
        ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.dstATop),
  ),
);

final kBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
  borderSide: BorderSide(width: 0, color: Colors.transparent),
);

final kTextFieldDecoration = InputDecoration(
    filled: true, fillColor: Colors.transparent, focusedBorder: kBorderStyle);
