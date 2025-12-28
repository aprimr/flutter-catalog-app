import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() => ThemeData(
    primarySwatch: Colors.blue,
    fontFamily: GoogleFonts.poppins().fontFamily,
    canvasColor: creamColor,
    cardColor: whiteColor,
    primaryColor: darkBlueishColor,
    highlightColor: darkBlueishColor,
    hintColor: whiteColor,
    hoverColor: creamColor,
    appBarTheme: AppBarTheme(
      backgroundColor: whiteColor,
      elevation: 0,
      iconTheme: IconThemeData(color: darkBlueishColor),
    ),
  );

  static ThemeData darkTheme() => ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    canvasColor: darkBgColor,
    cardColor: darkBlueishColor,
    primaryColor: whiteColor,
    highlightColor: whiteColor,
    hintColor: whiteColor,
    hoverColor: darkBgColor,
    appBarTheme: AppBarTheme(
      backgroundColor: whiteColor,
      elevation: 0,
      iconTheme: IconThemeData(color: darkBlueishColor),
    ),
  );

  // Colors
  static Color creamColor = Color(0xFFf5f5f5);
  static Color darkBgColor = Color(0xFF14121D);
  static Color darkBlueishColor = Color(0xFF2A273A);
  static Color grayColor = Color(0xFF9E9E9E);
  static Color whiteColor = Color(0xFFFFFFFF);
}
