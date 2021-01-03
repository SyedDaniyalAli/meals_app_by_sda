import 'package:flutter/material.dart';
import 'package:meals_app_by_sda/data/dummy_data.dart';
import 'package:meals_app_by_sda/models/meal.dart';
import 'package:meals_app_by_sda/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = './category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> displayedMeals;
  var _isDataLoaded=false;

  @override
  void initState() {
    //...
    super.initState();
  }

  @override
  void didChangeDependencies() {

    if(!_isDataLoaded)
      {
        final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
        final categoryId = routeArgs['id'];
        categoryTitle = routeArgs['title'];
        displayedMeals = DUMMY_MEALS
            .where((meals) => meals.categories.contains(categoryId))
            .toList();
        _isDataLoaded=true;
      }


    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeals[index].id,
            title: displayedMeals[index].title,
            affordability: displayedMeals[index].affordability,
            complexity: displayedMeals[index].complexity,
            duration: displayedMeals[index].duration,
            imageUrl: displayedMeals[index].imageUrl,
            removeItemFunc: _removeMeal,
          );
        },
        itemCount: displayedMeals.length,
      ),
    );
  }
}
