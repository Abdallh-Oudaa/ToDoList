import 'package:flutter/material.dart';
import 'package:to_do_list/ui/home/home_screen.dart';
import 'package:to_do_list/ui/login/login.dart';
import 'package:to_do_list/ui/register/register_screen.dart';
import 'package:to_do_list/ui/themeing/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme:CustomTheme.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        RegisterScreen.routName: (_) => RegisterScreen(),
        login.routName: (_) => login(),
        HomeScreen.routName:(_)=> HomeScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
