import 'package:flutter/material.dart';

class Product {
  String image, title, description;
  int price,size,id;
  Color color;

  Product({
    this.title,
    this.id,
    this.color,
    this.price,
    this.description,
    this.image,
    this.size
});
}