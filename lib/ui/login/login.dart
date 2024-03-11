import 'package:flutter/material.dart';
import 'package:to_do_list/ui/common/custom_formfiled.dart';
import 'package:to_do_list/validation_emile.dart';

class login extends StatelessWidget {
  static String routName = "login";

  TextEditingController Email = TextEditingController();
  TextEditingController password = TextEditingController();

  var formkey = GlobalKey<FormState>();
  login({super.key});

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
                const SizedBox(
                  height: 6,
                ),
                ElevatedButton(
                    onPressed: () {
                      loginFunc();
                    },
                    child: const Text("login"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginFunc() {
    if (formkey.currentState?.validate() == false) {
      return;
    }
  }
}
