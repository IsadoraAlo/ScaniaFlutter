import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        onPrimary: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0));
