import 'package:baby_needs/utils/colors.dart';
import 'package:flutter/material.dart';

class TabMenu extends StatelessWidget {
  const TabMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.highlight,
        ),
        child: DefaultTabController(
          length: 2,
          child: TabBar(
              unselectedLabelColor: AppColor.textcolor,
              indicator:
                  BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColor.indicator),
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
        ));
  }
}
