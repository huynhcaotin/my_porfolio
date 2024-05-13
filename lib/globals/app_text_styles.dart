import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyle() {
    return GoogleFonts.mukta(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 18,
    );
  }

  static TextStyle montserratStyle( {required Color color, double fontSize = 24}) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: fontSize,
    );
  }

  static TextStyle headingStyle({double fontSize = 36, Color color = Colors.white}) {
    return GoogleFonts.rubikMoonrocks(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      letterSpacing: 2,
    );
  }

    static TextStyle normalTexStyle( {Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w500,
      fontSize: 17,
      letterSpacing: 1.5
    );
  }
}
