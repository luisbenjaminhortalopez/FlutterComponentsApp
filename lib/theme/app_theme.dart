
import 'package:flutter/material.dart';

class AppTheme{
static const  Color primary = Colors.green;


static final ThemeData lightTheme =  ThemeData.light().copyWith(
        
        primaryColor: Colors.indigo,

        appBarTheme: const AppBarTheme(color: primary, elevation: 5),

        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: primary))
      );
      static final ThemeData darkTheme =  ThemeData.dark().copyWith(
        
        primaryColor: Colors.indigo,

        appBarTheme: const AppBarTheme(color: Colors.indigo, elevation: 2),
        ///scaffoldBackgroundColor: Colors.grey

      );
}