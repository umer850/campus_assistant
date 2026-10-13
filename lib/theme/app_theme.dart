import 'package:flutter/material.dart';

class AppTheme {
  // Colors kept in one place so every file can reuse them
  static const Color primary = Color(0xFF002366);
  static const Color background = Color(0xFFF4F6FF);

  // Point 3: heading style
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: primary,
  );

  // Point 4: paragraph style (different from heading)
  static const TextStyle paragraph = TextStyle(
    fontSize: 16,
    color: Color(0xFF424242),
  );

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // Point 1: primary color + scaffold background
    primaryColor: primary,
    colorScheme: ColorScheme.fromSeed(seedColor: primary),
    scaffoldBackgroundColor: background,
    // Point 2: global AppBar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    // Point 5: theme-defined text style, read later via Theme.of(context)
    textTheme: const TextTheme(
      labelSmall: TextStyle(
        fontSize: 12,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
      ),
    ),
  );
}
