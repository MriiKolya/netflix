// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/internal/utils/constants.dart';

ThemeData night_theme() => ThemeData(
    brightness: Brightness.dark,
    primaryColor: night_primaryColor,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.manrope(fontSize: 22),
      headlineMedium: GoogleFonts.manrope(
        fontSize: 14,
        fontWeight: FontWeight.w300
      ),
    ),
    scaffoldBackgroundColor: night_primaryColor);
