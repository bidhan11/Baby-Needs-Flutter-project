import 'package:baby_needs/utils/colors.dart';
import 'package:flutter/material.dart';

class PurchasedPage extends StatelessWidget {
  const PurchasedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColor.homecolor,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset("assets/images/noitem.png"),
          const Text(
            "No Purchased Item",
            style: TextStyle(fontSize: 20, color: AppColor.textcolor, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
