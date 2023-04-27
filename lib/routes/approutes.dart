import 'package:baby_needs/controllers/splash_screen_controller.dart';
import 'package:baby_needs/view/home/add_item_page.dart';
import 'package:baby_needs/view/home/edit_item_page.dart';
import 'package:baby_needs/view/home/home_page.dart';
import 'package:baby_needs/view/auth/intro_page.dart';
import 'package:baby_needs/view/auth/mothers_details_page.dart';
import 'package:baby_needs/view/profile/password_reset.dart';
import 'package:baby_needs/view/profile/profile_page.dart';
import 'package:baby_needs/view/auth/sign_in_page.dart';
import 'package:baby_needs/view/auth/sign_up_page.dart';
import 'package:baby_needs/view/auth/splash_screen.dart';
import 'package:baby_needs/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
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
  GetPage(name: MothersDetailsPage.routename, page: () => const MothersDetailsPage()),
  GetPage(name: PasswordReset.routename, page: () => const PasswordReset()),
  GetPage(name: ProfilePage.routename, page: () => const ProfilePage()),
  GetPage(name: AddItemPage.routename, page: () => const AddItemPage()),
  GetPage(
    name: HomePage.routename,
    page: () => const HomePage(),
  ),
  GetPage(name: NavBar.routename, page: () => NavBar()),
];
