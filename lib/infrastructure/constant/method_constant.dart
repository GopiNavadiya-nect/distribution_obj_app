import 'package:flutter/material.dart';

class MethodConstant{
  static Color getRankColor(int index) {
    const colors = [
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.blue,
      Colors.purple,
      Colors.teal,
      Colors.pink,
      Colors.indigo,
      Colors.deepOrange,
      Colors.brown,
    ];

    return colors[index % colors.length];
  }

}