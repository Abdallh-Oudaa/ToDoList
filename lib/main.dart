import 'package:flutter/material.dart';
import 'package:to_do_list/ui/register/register_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      routes: {
        RegisterScreen.routName:(_)=>const RegisterScreen(),

      },
      initialRoute: RegisterScreen.routName,
    );
    
  }
}