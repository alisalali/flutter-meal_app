import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});
  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    print(meals);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Text('text'),
    );
  }
}
