import 'package:flutter/material.dart';

// ignore: use_full_hex_values_for_flutter_colors
const Color mainColor = Color(0xffff2e81b7);
const Color redColor = Color.fromARGB(255, 210, 87, 78); //
const Color darkColor = Color.fromARGB(255, 24, 20, 20);


class ThemesApp {
  static final light = ThemeData(
      primaryColor: mainColor,
      cardColor: Colors.white,
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(backgroundColor: mainColor),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: mainColor,
          unselectedItemColor: darkColor));

  static final dark = ThemeData(
      primaryColor: darkColor,
      cardColor: darkColor,
      backgroundColor: darkColor,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(backgroundColor: darkColor),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: darkColor,
          selectedItemColor: mainColor,
          unselectedItemColor: Colors.white));
}
