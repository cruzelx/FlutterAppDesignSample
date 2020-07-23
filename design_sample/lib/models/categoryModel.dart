import 'package:flutter/material.dart';

class Category {
  final Color color;
  final String title;
  final double value;
  final double amount;
  final double radius;
  final double percentage;
  final TextStyle textStyle;
  final Icon icon;

  Category(
      {this.color,
      this.title,
      this.value,
      this.amount,
      this.radius,
      this.percentage,
      this.textStyle,
      this.icon});
}
