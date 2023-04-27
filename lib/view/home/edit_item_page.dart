import 'package:baby_needs/utils/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom/custom_button.dart';
import '../../widget/custom/custom_item_text_field.dart';

class EditItemPage extends StatelessWidget {
  static final String routename = "/EditItemPage";
  const EditItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.homecolor,
        appBar: AppBar(
          backgroundColor: AppColor.homecolor,
          title: const Center(
              child: Text(
            "Edit Item",
            style: TextStyle(color: AppColor.textcolor, fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 23.0, top: 20, right: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Item Name",
                  style: TextStyle(color: AppColor.textcolor),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ItemTextFields(
                    height: 1,
                    tlabel: "Name",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Description",
                    style: TextStyle(color: AppColor.textcolor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ItemTextFields(
                    height: 5,
                    tlabel: "Description",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Price",
                    style: TextStyle(color: AppColor.textcolor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ItemTextFields(
                    height: 1,
                    tlabel: "Price",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Image",
                    style: TextStyle(color: AppColor.textcolor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: DottedBorder(
                    dashPattern: const [4],
                    color: AppColor.texthighlight,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: SizedBox(
                        height: 169,
                        width: 344,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
                          Icon(
                            Icons.add,
                            size: 30,
                            color: AppColor.textcolor,
                          ),
                          Text(
                            "Attach Image",
                            style: TextStyle(color: AppColor.textcolor),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 23, right: 23),
                  child: SizedBox(
                    width: 344,
                    child: CustomButton(
                        buttonname: "Update ",
                        bordercolor: AppColor.bordercolor,
                        buttoncolor: AppColor.bordercolor,
                        onPressed: () {}),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
