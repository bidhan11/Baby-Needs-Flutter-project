import 'package:baby_needs/utils/colors.dart';
import 'package:flutter/material.dart';

class custom_home_text_field extends StatelessWidget {
  String? textfieldname;
  custom_home_text_field({
    required this.textfieldname,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.next,
      autofocus: true,
      style: const TextStyle(color: AppColor.textcolor),
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.texthighlight),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.texthighlight),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          filled: true,
          fillColor: AppColor.highlight,
          border: const OutlineInputBorder(),
          label: Text(
            textfieldname!,
            style: const TextStyle(color: AppColor.texthighlight),
          )),
    );
  }
}
