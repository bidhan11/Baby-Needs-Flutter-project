import 'package:baby_needs/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? fieldName;
  CustomTextField({
    this.fieldName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.next,
      style: const TextStyle(color: AppColor.textcolor),
      decoration: InputDecoration(
          label: Text(
        "$fieldName",
        style: const TextStyle(color: Color.fromARGB(255, 173, 175, 184)),
      )),
    );
  }
}
