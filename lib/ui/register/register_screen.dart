import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static String routName="register";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/registerBackround.png"),
        fit: BoxFit.fill),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        
      ),
    );
  }
}