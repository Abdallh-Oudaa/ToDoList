import 'package:flutter/material.dart';
import 'package:to_do_list/ui/common/custom_formfiled.dart';
import 'package:to_do_list/validation_emile.dart';

class RegisterScreen extends StatelessWidget {
  static String routName = "register";
  TextEditingController fullName = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();
  var formkey = GlobalKey<FormState>();
  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/registerBackround.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFormFiled(
                  hintText: "fullName",
                  textInputType: TextInputType.name,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "somthing error";
                    }
                  },
                  controller: fullName,
                ),
                CustomFormFiled(
                  hintText: "userName",
                  textInputType: TextInputType.name,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "somthing error";
                    }
                  },
                  controller: userName,
                ),
                CustomFormFiled(
                  hintText: "Email",
                  textInputType: TextInputType.emailAddress,
                  validator: (emile) {
                    if (emile == null || isValid(emile) != true) {
                      return "emile syntax error";
                    }
                    return null;
                  },
                  controller: Email,
                ),
                CustomFormFiled(
                  hintText: "password",
                  isvasible: true,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "somthing error";
                    }
                    if (text.length < 6) {
                      return "shoud at least 6 latters";
                    }
                    return null;
                  },
                  controller: password,
                ),
                CustomFormFiled(
                  hintText: "password confirmation",
                  isvasible: true,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "somthing error";
                    }
                    if (text.length < 6) {
                      return "shoud at least 6 latters";
                    }
                    if (password.text != passwordConfirmation.text) {
                      return "not match";
                    }
                    return null;
                  },
                  controller: passwordConfirmation,
                ),
                const SizedBox(
                  height: 6,
                ),
                ElevatedButton(
                    onPressed: () {
                      createAccount();
                    },
                    child: const Text("create account"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void createAccount() {
    if (formkey.currentState?.validate() == false) {
      return;
    }
  }
}
