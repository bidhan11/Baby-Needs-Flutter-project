import 'package:baby_needs/utils/colors.dart';
import 'package:baby_needs/view/add_item_page.dart';
import 'package:baby_needs/widget/custom/custom_button.dart';
import 'package:baby_needs/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  static const String routename = "/SignInPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColor.appcolor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 92.0),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 270,
                  width: 270,
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding:
                    const EdgeInsets.only(top: 26.0, left: 127, right: 140),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                      color: AppColor.textcolor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                width: 330,
                child: CustomTextField(
                  fieldName: "Email",
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                  width: 330,
                  child: CustomTextField(
                    fieldName: "Password",
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 61.0),
                child: CustomButton(
                    buttonname: "Sign In",
                    bordercolor: AppColor.bordercolor,
                    buttoncolor: AppColor.bordercolor,
                    onPressed: () {
                      Get.offNamed(AddItemPage.routename);
                    }),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(top: 61.0),
                child: const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 163, 173, 199), fontSize: 16),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Get.offNamed("SignUpPage");
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: AppColor.textcolor,
                        decoration: TextDecoration.underline,
                        fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
