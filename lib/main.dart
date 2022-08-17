import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Location(),
      MaterialApp(
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
