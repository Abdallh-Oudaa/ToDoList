import 'package:flutter/material.dart';

class CustomTheme{
 static ThemeData lightTheme=ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,
  primary:Colors.blue ),
  useMaterial3: false,
 );

 static ThemeData darkTheme=ThemeData(
  useMaterial3: false,
 );
}