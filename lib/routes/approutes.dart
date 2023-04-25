import 'package:baby_needs/controllers/splash_screen_controller.dart';
import 'package:baby_needs/view/intro_page.dart';
import 'package:baby_needs/view/mothers_details_page.dart';
import 'package:baby_needs/view/password_reset.dart';
import 'package:baby_needs/view/sign_in_page.dart';
import 'package:baby_needs/view/sign_up_page.dart';
import 'package:baby_needs/view/splash_screen.dart';
import 'package:get/get.dart';

var routes = [
  GetPage(
      name: SplashScreen.routename,
      page: () => const SplashScreen(),
      binding: BindingsBuilder(() {
        // Get.lazyPut(() => SplashScreenController());
        Get.put(SplashScreenController());
      })),
  GetPage(name: IntroPage.routename, page: () => IntroPage()),
  GetPage(name: SignInPage.routename, page: () => const SignInPage()),
  GetPage(name: SignUpPage.routename, page: () => const SignUpPage()),
  GetPage(
      name: MothersDetailsPage.routename,
      page: () => const MothersDetailsPage()),
  GetPage(name: PasswordReset.routename, page: () => PasswordReset())
];
