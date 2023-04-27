import 'package:flutter/material.dart';

class Item {
  int id;
  String title;
  String description;
  double price;
  String image;
  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });
}
