import "package:baby_needs/utils/colors.dart";
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
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 20.0, left: 23),
          child: Text(
            "Old Password",
            style: TextStyle(color: AppColor.textcolor, fontSize: 16),
          ),
        )
      ]),
    );
  }
}
