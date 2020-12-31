import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  static const routeName = './meal-detail-screen';


  @override
  Widget build(BuildContext context) {

    final mealID =  ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      body: Center(
        child: Text('The Meal id is: $mealID'),
      ),
    );
  }
}
