import 'package:flutter/material.dart';

final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      primary: Colors.white,
      secondary: const Color.fromARGB(255, 50, 82, 249),
      tertiary: const Color.fromARGB(150, 50, 83, 249),
      onTertiary: const Color.fromARGB(255, 145, 145, 145),
    ),
    textTheme: const TextTheme(
      labelLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      labelMedium: TextStyle(fontSize: 16, color: Colors.black),
      labelSmall: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 50, 82, 249),
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(150, 50, 82, 249),
      ),
      bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      bodySmall: TextStyle(fontSize: 15, color: Colors.white),
    ));
