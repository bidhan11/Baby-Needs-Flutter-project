import 'package:baby_needs/utils/colors.dart';
import 'package:baby_needs/widget/bottom_nav_bar.dart';
import 'package:baby_needs/widget/custom/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static final String routename = "/HomePage";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homecolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.homecolor,
        title: const Center(
            child: Text(
          "Baby Buy",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 23.0, right: 23),
        child: Column(
          children: const [
            TabMenu(),
          ],
        ),
      ),
    );
  }
}
