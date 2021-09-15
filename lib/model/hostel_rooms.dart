import 'package:flutter/material.dart';

class Room {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Room({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}
