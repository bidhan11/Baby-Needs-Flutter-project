import 'package:baby_needs/controllers/items_controllers.dart';
import 'package:baby_needs/utils/colors.dart';
import 'package:baby_needs/view/home/add_item_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemsListController itemsData = Get.find();
    var items = itemsData.Itemlist;

    return Scaffold(
      backgroundColor: AppColor.homecolor,
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.only(top: 23.0, right: 23, left: 23),
            child: Container(
              height: 141,
              width: 345,
              decoration:
                  BoxDecoration(color: AppColor.highlight, borderRadius: BorderRadius.circular(10)),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 8, right: 11, bottom: 11),
                  child: Image.asset(
                    item.image,
                    width: 130,
                    height: 120,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0, left: 4),
                      child: Text(
                        item.title,
                        style: const TextStyle(
                            color: AppColor.textcolor, fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 175,
                      height: 47,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6.0, left: 13.59, right: 16),
                        child: Text(
                          item.description,
                          style: const TextStyle(
                              color: AppColor.textcolor, fontSize: 13, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Rs: ${item.price}",
                          style: const TextStyle(
                              fontSize: 14, color: Color(0xff95FF8C), fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                            size: 20,
                            color: AppColor.bordercolor,
                          ),
                          label: const Text(
                            "Send",
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 61, 148, 228)),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 64, 77, 117)),
                        ),
                        const SizedBox(
                          width: 16,
                        )
                      ],
                    )
                  ],
                )
              ]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AddItemPage.routename);
        },
        // ignore: prefer_const_constructors
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
