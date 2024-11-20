import 'package:flutter/material.dart';

class Coin {
  final String id; 
  final String title; 
  final Color color; 
  final double price; 
  
  const Coin({
    required this.id,
    required this.title,
    this.color = Colors.orange, // Cor padrão é laranja.
    required this.price, // O preço é obrigatório.
  });
}
