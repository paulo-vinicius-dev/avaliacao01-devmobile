import 'package:flutter/material.dart';

class Coin {
  const Coin({
      required this.id,
      required this.title,
      this.color = Colors.orange,
      required this.price, 
    });

  final String id; 
  final String title; 
  final Color color; 
  final double price; 
}
