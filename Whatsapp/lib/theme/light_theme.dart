import 'package:flutter/material.dart';

import '../models/colours.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: Colours.backgroundLight,
    scaffoldBackgroundColor: Colours.backgroundLight,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.greenLight,
        foregroundColor: Colours.backgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
