import 'package:baby_needs/utils/colors.dart';
import 'package:baby_needs/view/sign_in_page.dart';
import 'package:baby_needs/view/sign_up_page.dart';
import 'package:baby_needs/widget/custom/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroPage extends StatelessWidget {
  static const String routename = "/intropage";
  IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appcolor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 83.0, left: 5, right: 5),
              child: Image.asset("assets/images/mother.png"),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(top: 40.0, right: 66, left: 67),
              child: const Text(
                "Welcome to Baby Buy",
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.textcolor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 47, right: 25),
              child: const Text(
                "Join our community of parents to provide the best products for your baby.",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColor.textcolor, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 62.0),
              child: CustomButton(
                buttonname: "Sign Up",
                bordercolor: AppColor.bordercolor,
                buttoncolor: AppColor.bordercolor,
                onPressed: () {
                  Get.toNamed(SignUpPage.routename);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: CustomButton(
                buttonname: "Sign In",
                bordercolor: AppColor.bordercolor,
                buttoncolor: AppColor.appcolor,
                onPressed: () {
                  Get.toNamed(SignInPage.routename);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
