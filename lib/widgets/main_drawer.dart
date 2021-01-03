import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildListTile({String text, IconData iconData, Function tabHandler}) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 26,
      ),
      title: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed',
            fontSize: 24),
      ),
      onTap: tabHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).accentColor,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          _buildListTile(text: 'Restaurants', iconData: Icons.restaurant, tabHandler: () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          _buildListTile(text: 'Filters', iconData: Icons.settings, tabHandler: (){
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          } )
        ],
      ),
    );
  }
}
