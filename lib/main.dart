import 'package:flutter/material.dart';
import 'package:station_eleven_m/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: customColor[700], // Gunakan shade700 sebagai primaryColor langsung
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: customColor, // Gunakan keseluruhan MaterialColor untuk primarySwatch
        ).copyWith(
          secondary: customColor[900],

        ),
      ),
      home: MyHomePage(),
    );
  }
}

MaterialColor customColor = MaterialColor(
  0xFF42A5F5, // Primary color value
  <int, Color>{
    50: Color(0xFFE3F2FD),
    100: Color(0xFFBBDEFB),
    200: Color(0xFF90CAF9),
    300: Color(0xFF64B5F6),
    400: Color(0xFF42A5F5),
    500: Color(0xFF2196F3),
    600: Color(0xFF1E88E5),
    700: Color(0xFF1976D2),
    800: Color(0xFF1565C0),
    900: Color(0xFF0D47A1),
  },
);