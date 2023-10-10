import 'package:meal_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectedCategory,
  });

  final Category category;
  final void Function() onSelectedCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // to make widget tap able also u can use GestureDetector but there is no effect
      onTap: onSelectedCategory,
      splashColor: Theme.of(context).primaryColor, // make visual effect
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.55),
                category.color.withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          category.title,
          // apply title large theme with extra settings
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context)
                    .colorScheme
                    .onBackground, // to access flutter color scheme (seedColor)
              ),
        ),
      ),
    );
  }
}
