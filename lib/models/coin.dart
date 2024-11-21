import 'package:flutter/material.dart';

class Coin {
  const Coin({
      required this.id,
      required this.title,
      this.color = Colors.orange,
      required this.price,
      required this.previewPrice,
      required this.description,
      required this.image,
  });

  final String id; 
  final String title; 
  final Color color; 
  final double price;
  final double previewPrice;
  final String description;
  final String image; 
}
