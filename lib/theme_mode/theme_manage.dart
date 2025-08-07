import 'package:flutter/material.dart';

//light theme
ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xc3e9ffff), foregroundColor: Colors.black),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold
        ),
        titleSmall: TextStyle(
            color: Colors.white70,
            fontSize: 12)
    ),
    canvasColor: Colors.white);

//dark theme
ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xc3979898), foregroundColor: Colors.white),
    textTheme: TextTheme(
        titleLarge: const TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(color: Colors.grey.shade700, fontSize: 12)),
    canvasColor: Colors.black);
