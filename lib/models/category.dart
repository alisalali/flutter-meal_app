import 'package:flutter/material.dart';

// creating models for category items then import this file into dummy data and initialize const object for creating  list of category
class Category {
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
  final String id;
  final String title;
  final Color color;
}
