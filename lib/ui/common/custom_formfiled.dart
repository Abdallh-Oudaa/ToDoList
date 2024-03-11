import 'package:flutter/material.dart';
typedef Validator=String? Function(String?);
class CustomFormFiled extends StatelessWidget {
  TextEditingController controller;
  Validator? validator;
  bool isvasible;
  String hintText;
  TextInputType textInputType;
   CustomFormFiled({super.key, required this.hintText,  this.textInputType=TextInputType.text, 
   this.isvasible=false,required this.validator,required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      validator:validator ,
      obscureText:isvasible ,
      keyboardType:textInputType ,
      decoration: InputDecoration(
        hintText: hintText,hintStyle:const TextStyle(color: Colors.white)
      ),
    );
  }
}