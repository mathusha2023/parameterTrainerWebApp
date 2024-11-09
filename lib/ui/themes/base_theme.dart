import 'package:flutter/material.dart';

abstract class BaseTheme {
  Color get backgroundColor;

  Color get primaryContent;

  Color get primaryAccent;

  Color get secondaryColor;

  Color get cardColor;

  Brightness get brightness;

  ThemeData get themeData => ThemeData(
      primaryColor: primaryContent,
      cardColor: cardColor,
      textTheme: TextTheme(
          displayMedium: TextStyle(color: primaryContent),
          displayLarge: TextStyle(color: primaryContent, fontSize: 17.5)),
      cardTheme: CardTheme(color: cardColor),
      buttonTheme: ButtonThemeData(
          buttonColor: cardColor, textTheme: ButtonTextTheme.primary),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 26, color: primaryContent),
      ),
      tabBarTheme: TabBarTheme(
        labelStyle: TextStyle(color: primaryAccent, fontSize: 18),
        unselectedLabelStyle: TextStyle(color: primaryContent, fontSize: 18),
        dividerColor: Colors.transparent,
      ),
      colorScheme: ColorScheme(
          brightness: brightness,
          primary: primaryAccent,
          onPrimary: primaryAccent,
          secondary: secondaryColor,
          onSecondary: secondaryColor,
          error: Colors.black,
          onError: Colors.black,
          surface: backgroundColor,
          onSurface: primaryContent));
}
