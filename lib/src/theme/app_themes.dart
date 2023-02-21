import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/core_export.dart';

class AppThemes {
  final lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.yellow500,
    splashColor: AppColors.neutral100,
    // * ===== AppBar Theme ======
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
      ),
    ),
    // * ===== Text Theme ======
    textTheme: TextTheme(
      //* Heading 1 (H1)
      headlineLarge: TextStyle(),
      //* Heading 2 (H2)
      headlineMedium: TextStyle(),
      //* Heading 3 (H3)
      headlineSmall: TextStyle(),
      //* Heading 4 (H4)
      displayLarge: TextStyle(
        fontFamily: AppFonts.loraFontFamily,
        color: AppColors.neutral900,
        fontSize: 40,
        fontWeight: AppFonts.loraSemiBold,
      ),
      //* Heading 5 (H5)
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
      //* Heading 5 (H5)
      titleMedium: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: TextStyle(),
      // * p1-r
      bodyLarge: TextStyle(),
      // * p1-b
      bodyMedium: TextStyle(),
      // * p2-r
      bodySmall: TextStyle(),
      // * p2-b
      labelLarge: TextStyle(),
      // * p3-r
      labelMedium: TextStyle(
        color: Colors.white,
        fontFamily: AppFonts.interFontFamily,
        fontWeight: AppFonts.loraSemiBold,
      ),
      // * p3-b
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
