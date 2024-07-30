import 'package:flutter/material.dart';

final theme = ThemeData(
    colorScheme:
        ColorScheme.fromSeed(seedColor: Colors.white, primary: Colors.white, secondary:  const Color.fromARGB(255, 50, 82, 249)),
    textTheme: const TextTheme(
      labelLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      labelSmall: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
      labelMedium: TextStyle(fontSize: 16),
      bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      bodySmall: TextStyle(fontSize: 15, color: Colors.white),
    ));
