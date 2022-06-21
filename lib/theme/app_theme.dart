import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme appTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    ),
    bodyText2: GoogleFonts.openSans(
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline4: GoogleFonts.openSans(
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
      color: Colors.grey,
    ),
  );
}
