import 'package:baby_needs/controllers/items_controllers.dart';
import 'package:baby_needs/routes/approutes.dart';
import 'package:baby_needs/view/auth/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      getPages: routes,
      initialRoute: SplashScreen.routename,
      initialBinding: BindingsBuilder(() {
        Get.put(ItemsListController());
      }),
    );
  }
}
