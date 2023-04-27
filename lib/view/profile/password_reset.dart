import "package:baby_needs/utils/colors.dart";
import "package:baby_needs/widget/custom/custom_button.dart";
import "package:baby_needs/widget/custom/custom_home_text_field.dart";
import "package:flutter/material.dart";

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});
  static const String routename = "/PasswordReset";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homecolor,
      appBar: AppBar(
        backgroundColor: AppColor.homecolor,
        title: const Center(
            child: Text(
          "Change Password",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 23),
            child: Text(
              "Old Password",
              style: TextStyle(color: AppColor.textcolor, fontSize: 16),
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 23, right: 23),
            child: custom_home_text_field(
              textfieldname: "Old Password",
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 23),
            child: Text(
              "New Password",
              style: TextStyle(color: AppColor.textcolor, fontSize: 16),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 23, right: 23),
            child: custom_home_text_field(
              textfieldname: "New Password",
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 23),
            child: Text(
              "Confirm Password",
              style: TextStyle(color: AppColor.textcolor, fontSize: 16),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 23, right: 23),
            child: custom_home_text_field(
              textfieldname: "Confirm Password",
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 64.0, left: 24, right: 22),
            child: SizedBox(
              width: 344,
              child: CustomButton(
                  buttonname: "Update",
                  bordercolor: AppColor.bordercolor,
                  buttoncolor: AppColor.bordercolor,
                  onPressed: () {}),
            ),
          )
        ]),
      ),
    );
  }
}
