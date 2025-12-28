import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() => ThemeData(
    primarySwatch: Colors.blue,
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );

  static ThemeData darkTheme() => ThemeData(brightness: Brightness.dark);

  // Colors
  static Color creamColor = Color(0xFFf5f5f5);
  static Color darkBlueishColor = Color(0xFF403b58);
  static Color grayColor = Color(0xFF9E9E9E);
  static Color whiteColor = Color(0xFFFFFFFF);
}
