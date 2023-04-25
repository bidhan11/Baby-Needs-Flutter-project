import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  String? buttonname;
  Color? bordercolor;
  Color? buttoncolor;

  VoidCallback? onPressed;
  CustomButton({
    super.key,
    required this.buttonname,
    required this.bordercolor,
    required this.buttoncolor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 282,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: buttoncolor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            side: BorderSide(width: 2, color: bordercolor ?? Colors.white)),
        child: Text(
          buttonname!,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
