import 'dart:async';

import 'package:baby_needs/view/intro_page.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(IntroPage.routename);
    });
    super.onInit();
  }
}
