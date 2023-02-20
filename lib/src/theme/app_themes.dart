import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/core_export.dart';

class AppThemes {
  final lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.yellow500,
    splashColor: Colors.grey,
    // * ===== AppBar Theme ======
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 68, 181, 30),
      ),
    ),
    // * ===== Text Theme ======
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontFamily: AppFonts.loraFontFamily,
        color: AppColors.neutral900,
        fontSize: 40,
        fontWeight: AppFonts.loraSemiBold,
      ),
      displayMedium: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: Color.fromARGB(255, 68, 181, 30),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: Color.fromARGB(255, 68, 181, 30),
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
      titleMedium: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: TextStyle(
        color: Color.fromARGB(255, 68, 181, 30),
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
      labelLarge: TextStyle(),
      labelMedium: TextStyle(
        color: Colors.white,
        fontFamily: AppFonts.interFontFamily,
        fontWeight: AppFonts.loraSemiBold,
      ),
      labelSmall: TextStyle(),
    ),
    // * ===== ColorScheme Theme ======

    colorScheme: const ColorScheme(
      background: Colors.black,
      brightness: Brightness.light,
      error: Colors.red, //* Cores das bordas do form ao dar erro
      onError: Colors.red,
      primary: Colors.black, //* Cores dos textos nos botoes e splash dos botoes
      onPrimary: Colors.black,
      onBackground: Colors.black, //* Cores dos formfields nao focados
      secondary: Colors.black,
      onSecondary: Colors.black,
      surface: Colors.white, //* Cor primaria dos bottoes
      onSurface: Colors.black, //* Cores dos icones normais,
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    primaryColor: const Color.fromARGB(255, 68, 181, 30),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: Color.fromARGB(255, 68, 181, 30),
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      displayMedium: TextStyle(
        color: Colors.grey,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
      labelLarge: TextStyle(),
      labelMedium: TextStyle(),
      labelSmall: TextStyle(),
    ),
    colorScheme: const ColorScheme(
      background: Colors.black,
      brightness: Brightness.light,
      error: Colors.red, //* Cores das bordas do form ao dar erro
      onError: Colors.red,
      primary: Colors.black, //* Cores dos textos nos botoes e splash dos botoes
      onPrimary: Colors.black,
      onBackground: Colors.black, //* Cores dos formfields nao focados
      secondary: Colors.black,
      onSecondary: Colors.black,
      surface: Colors.white, //* Cor primaria dos bottoes
      onSurface: Colors.black, //* Cores dos icones normais,
    ),
  );
}
