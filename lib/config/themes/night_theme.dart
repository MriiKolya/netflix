// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/internal/utils/constants.dart';

ThemeData night_theme() => ThemeData(
    brightness: Brightness.dark,
    primaryColor: night_primaryColor,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.montserrat(fontSize: 24, color: Colors.white),
      labelLarge: GoogleFonts.montserrat(fontSize: 22, color: Colors.white),
      headlineMedium: GoogleFonts.montserrat(
          fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
    ),
    scaffoldBackgroundColor: night_primaryColor);
