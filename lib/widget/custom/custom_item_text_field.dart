import 'package:baby_needs/utils/colors.dart';
import 'package:flutter/material.dart';

class ItemTextFields extends StatelessWidget {
  int? height;
  String? tlabel;
  ItemTextFields({
    required this.height,
    required this.tlabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextField(
        maxLines: height,
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
              "$tlabel",
              // ignore: prefer_const_constructors
              style: TextStyle(color: AppColor.texthighlight),
            )),
      ),
    );
  }
}
