import 'package:baby_needs/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsListController {
  List<Item> Itemlist = [
    Item(
        id: 1,
        title: "Baby Bottle",
        description: "A bottle for feeding babies",
        price: 100,
        image: "assets/images/feed.png"),
    Item(
        id: 2,
        title: "Diapers",
        description: "Disposable diapers for babies",
        price: 100,
        image: "assets/images/feed.png"),
    Item(
        id: 3,
        title: "Baby Monitor",
        description: "A device for monitoring baby's activities",
        price: 100,
        image: "assets/images/feed.png"),
  ];
}
