import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldStyle = InputDecoration(
  filled: true,
  hintText: 'Enter City Name',
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
);
