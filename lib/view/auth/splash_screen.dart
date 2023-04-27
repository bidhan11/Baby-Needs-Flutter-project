import 'dart:async';

import 'package:baby_needs/utils/colors.dart';
import 'package:baby_needs/view/auth/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  static const String routename = "/splashscreen";
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: AppColor.appcolor,
      child: Image.asset("assets/images/logo.png"),
    );
  }
}
