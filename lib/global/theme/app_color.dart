import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


 const Color appBgColor = const Color(0xFFFFFFFF);
 const Color primaryColor = const Color(0xFF2364AD);
 const Color buttonColor = const Color(0xFF2364AD);


class AppThemes {
  static ThemeData appTheme = ThemeData(
    primaryColor: primaryColor,
    buttonColor: buttonColor,
    backgroundColor: appBgColor,
  );
}
