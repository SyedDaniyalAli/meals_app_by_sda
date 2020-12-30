import 'package:flutter/material.dart';
import './category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem({this.title, this.color});

  void gotoScreen(BuildContext ctx, Widget screenName) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return screenName;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        gotoScreen(context, CategoryMealsScreen());
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
