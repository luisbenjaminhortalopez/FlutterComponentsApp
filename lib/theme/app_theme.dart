import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(color: primary, elevation: 5),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              shape: const StadiumBorder(),
              elevation: 0)),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primary
            ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))

          ),
               focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primary
            ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))

          ),
               border: OutlineInputBorder(
           
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))

          ),
          ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,

    appBarTheme: const AppBarTheme(color: Colors.indigo, elevation: 2),

    ///scaffoldBackgroundColor: Colors.grey
  );
}
