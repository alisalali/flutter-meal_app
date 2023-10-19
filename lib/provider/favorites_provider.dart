import 'package:meal_app/models/meal.dart';
import 'package:riverpod/riverpod.dart';

class FavoritesMealNotifier extends StateNotifier<List<Meal>> {
  FavoritesMealNotifier() : super([]);

  void toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

final favoritesMealProvider =
    StateNotifierProvider<FavoritesMealNotifier, List<Meal>>(
  (ref) {
    return FavoritesMealNotifier();
  },
);
