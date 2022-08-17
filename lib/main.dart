import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => NetworkHelper(),
        ),
        Provider(
          create: (_) => WeatherModel(),
        ),
        Provider(
          create: (_) => Location(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.resolveWith((state) => Colors.white),
            ),
          ),
        ),
        home: LoadingScreen(),
      ),
    );
  }
}
