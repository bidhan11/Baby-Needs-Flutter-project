import 'package:baby_needs/utils/colors.dart';
import 'package:baby_needs/view/password_reset.dart';
import 'package:baby_needs/widget/custom/custom_button.dart';
import 'package:baby_needs/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MothersDetailsPage extends StatelessWidget {
  const MothersDetailsPage({super.key});
  static const String routename = "/MothersDetailsPage";

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
                padding: const EdgeInsets.only(top: 67.0),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 270,
                  width: 270,
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(top: 26.0, bottom: 24),
                // ignore: prefer_const_constructors
                child: Center(
                  child: const Text(
                    "Mother Details",
                    style: TextStyle(
                        color: AppColor.textcolor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                width: 330,
                child: CustomTextField(
                  fieldName: "Mother's Name",
                ),
              ),
              SizedBox(
                width: 330,
                child: CustomTextField(
                  fieldName: "Mother's DOB",
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                  width: 330,
                  child: CustomTextField(
                    fieldName: "Delivery Date",
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 46.0),
                child: CustomButton(
                  buttonname: "Continue",
                  bordercolor: AppColor.bordercolor,
                  buttoncolor: AppColor.bordercolor,
                  onPressed: () {
                    Get.offNamed("ProfilePage");
                  },
                ),
              ),
              // ignore: prefer_const_constructors
            ],
          ),
        ),
      ),
    );
  }
}
