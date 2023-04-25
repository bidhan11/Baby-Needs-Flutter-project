import 'package:baby_needs/utils/colors.dart';
import 'package:flutter/material.dart';

class BackgroundTile extends StatelessWidget {
  String? t_head;
  String? t_body;
  BackgroundTile({
    required this.t_head,
    required this.t_body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 65,
      decoration: BoxDecoration(
          color: AppColor.highlight, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 13.0, top: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            '$t_head',
            style: const TextStyle(
                color: AppColor.textcolor,
                fontSize: 16,
                fontWeight: FontWeight.w800),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "$t_body",
              style: const TextStyle(color: AppColor.textcolor),
            ),
          )
        ]),
      ),
    );
  }
}
