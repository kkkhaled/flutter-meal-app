import 'package:flutter/material.dart';
import '../screens/favorite_screen.dart';
import '../screens/categories_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favourite',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [CategoriesScreen(), FavoriteScreen()],
        ),
      ),
    );
  }
}
