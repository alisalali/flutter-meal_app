import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/screens/categories.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/models/meal.dart';

// Define theme property
final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    // this property to copy theme then change required property
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const MealsScreen(
        title: 'test',
        meals: [
          Meal(
            id: 'm1',
            categories: [
              'c1',
              'c2',
            ],
            title: 'Spaghetti with Tomato Sauce',
            affordability: Affordability.affordable,
            complexity: Complexity.simple,
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
            duration: 20,
            ingredients: [
              '4 Tomatoes',
              '1 Tablespoon of Olive Oil',
              '1 Onion',
              '250g Spaghetti',
              'Spices',
              'Cheese (optional)'
            ],
            steps: [
              'Cut the tomatoes and the onion into small pieces.',
              'Boil some water - add salt to it once it boils.',
              'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
              'In the meantime, heaten up some olive oil and add the cut onion.',
              'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
              'The sauce will be done once the spaghetti are.',
              'Feel free to add some cheese on top of the finished dish.'
            ],
            isGlutenFree: false,
            isVegan: true,
            isVegetarian: true,
            isLactoseFree: true,
          ),
        ],
      ),
    );
  }
}
