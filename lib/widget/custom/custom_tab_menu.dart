import 'package:baby_needs/utils/colors.dart';
import 'package:baby_needs/view/home/items_page.dart';
import 'package:baby_needs/view/home/purchased_page.dart';
import 'package:flutter/material.dart';

class TabMenu extends StatelessWidget {
  const TabMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scaffold(
            backgroundColor: AppColor.highlight,
            appBar: TabBar(
                unselectedLabelColor: AppColor.textcolor,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: AppColor.indicator),
                labelColor: const Color(0xff779FF2),
                tabs: const [
                  Tab(
                    child: Text(
                      "Items",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Purchased",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  )
                ]),
            body: const TabBarView(children: [
              ItemsPage(),
              PurchasedPage(),
            ]),
          ),
        ),
      ),
    );
  }
}
