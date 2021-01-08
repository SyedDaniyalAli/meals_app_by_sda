import 'package:flutter/material.dart';
import 'package:meals_app_by_sda/models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> _favoritesMeals;

  FavoritesScreen(this._favoritesMeals);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You have no favorites yet - start adding some!'),
    );
  }
}
