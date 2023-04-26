import 'package:baby_needs/utils/colors.dart';
import 'package:baby_needs/view/intro_page.dart';
import 'package:baby_needs/view/password_reset.dart';
import 'package:baby_needs/widget/custom/background_tile.dart';
import 'package:baby_needs/widget/custom/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  static final String routename = "/ProfilePage";
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homecolor,
      appBar: AppBar(
          backgroundColor: AppColor.homecolor,
          title: const Center(
              child: Text(
            "Profile Page",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ))),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: CircleAvatar(
                      radius: 70, backgroundImage: AssetImage("assets/images/profile.jpeg")),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 17.0),
                child: Center(
                  child: Text(
                    "Zane Sharma",
                    style: TextStyle(
                        color: AppColor.textcolor, fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Center(
                  child: Text(
                    "zanesharma@gmail.com",
                    style: TextStyle(
                        color: AppColor.textcolor, fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 33.0),
                child: Text(
                  "Statisctics",
                  style: TextStyle(
                      color: AppColor.textcolor, fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    BackgroundTile(
                      t_head: "Total items",
                      t_body: "100",
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    BackgroundTile(
                      t_head: "Purchased items",
                      t_body: "20",
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Mother Detail",
                  style: TextStyle(
                      color: AppColor.textcolor, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 80,
                  width: 344,
                  decoration: BoxDecoration(
                      color: AppColor.highlight, borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 12, left: 12.0),
                          child: Text(
                            "Zane Sharma",
                            style: TextStyle(
                                color: AppColor.textcolor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.0, left: 5),
                          child: Text(
                            "(1990/01/13)",
                            style: TextStyle(color: AppColor.textcolor, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 13),
                      child: Row(
                        children: const [
                          Text(
                            "Due Date",
                            style: TextStyle(color: AppColor.textcolor),
                          ),
                          Text(
                            "2022/12/12",
                            style: TextStyle(color: AppColor.textcolor),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Settings",
                  style: TextStyle(
                      color: AppColor.textcolor, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(PasswordReset.routename);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: Container(
                    height: 50,
                    width: 344,
                    decoration: BoxDecoration(
                        color: AppColor.highlight, borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 10.0, left: 12, bottom: 10),
                          child: Text(
                            "Password ",
                            style: TextStyle(
                                color: AppColor.textcolor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: 220,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.textcolor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CustomButton(
                    buttonname: "Log Out",
                    bordercolor: AppColor.alert,
                    buttoncolor: AppColor.alert,
                    onPressed: () {
                      Get.offAllNamed(IntroPage.routename);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
