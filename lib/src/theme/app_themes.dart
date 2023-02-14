import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemes {
  static const Color mainCardColor = Color.fromRGBO(216, 216, 216, 1);

  final lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color.fromARGB(255, 68, 181, 30),
    splashColor: Colors.grey,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      color: const Color.fromARGB(255, 68, 181, 30),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 68, 181, 30),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: Color.fromARGB(255, 68, 181, 30),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: Color.fromARGB(255, 68, 181, 30),
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
      titleMedium: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
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
  final darkTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    primaryColor: const Color.fromARGB(255, 68, 181, 30),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: Colors.grey,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: Color.fromARGB(255, 68, 181, 30),
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      titleSmall: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
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
