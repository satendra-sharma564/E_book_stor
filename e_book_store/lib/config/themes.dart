import 'package:e_book_store/config/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,

//Color style define
  colorScheme: const ColorScheme(
    brightness: Brightness.light, 
    primary: primaryColor, 
    onPrimary: backgrounColor, 
    secondary: secondaryColor, 
    onSecondary: backgrounColor, 
    error: Colors.red, 
    onError: fontColor,
    background: backgrounColor,
    onBackground: fontColor, 
    surface: backgrounColor, 
    onSurface: fontColor
    ),

// Text Style Define
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      fontWeight: FontWeight.w500,
      ),
      
    bodyMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      ),
      
    bodySmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      fontWeight: FontWeight.w500,
      ),
    labelLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: lebelColor
      ),
      labelMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: lebelColor
      ),
      labelSmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: lebelColor
      )
  ),
);
