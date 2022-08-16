import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

void getLocation() async {
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low);
  print(position);
}

void requestPermission() async {
  LocationPermission permission = await Geolocator.requestPermission();
}

void openAppSettings() async {
  await Geolocator.openAppSettings();
}

void openLocationSsettings() async {
  await Geolocator.openLocationSettings();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //openLocationSsettings();
            //openAppSettings();
            requestPermission();
            getLocation();
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
