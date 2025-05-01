import 'package:flutter/material.dart';

void main() {
  runApp(MenuApp());
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MenuScreen(),
    );
  }
}

class Dishes {
  final String name;
  final String imagePath;
  final List<String> ingredients;

  Dishes({
    required this.name,
    required this.imagePath,
    required this.ingredients,
  });
}

class MenuScreen extends StatelessWidget {
  final List<Dishes> dishes = [
    Dishes(
      name: 'Spaghetti',
      imagePath: 'assets/images/spaghetti.jpeg',
      ingredients: ['Pasta', 'Tomato Sauce', 'Garlic', 'Basil', 'Olive Oil'],
    ),
    Dishes(
      name: 'Chicken Biryani',
      imagePath: 'assets/images/chickenbiryani.jpeg',
      ingredients: ['Rice', 'Chicken', 'Spices', 'Onions', 'Yogurt'],
    ),
    Dishes(
      name: 'Tacos',
      imagePath: 'assets/images/tacos.jpeg',
      ingredients: ['Tortilla', 'Beef', 'Lettuce', 'Cheese', 'Salsa'],
    ),
    Dishes(
      name: 'Paneer Reshmi Handi',
      imagePath: 'assets/images/pannerreshmihandi.jpeg',
      ingredients: ['Paneer', 'Butter', 'Tomato', 'Cream', 'Spices'],
    ),
    Dishes(
      name: 'Caesar Salad',
      imagePath: 'assets/images/caesersalad.jpeg',
      ingredients: ['Lettuce', 'Croutons', 'Cheese', 'Chicken', 'Dressing'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu')),
      body: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (context, index) {
          final dish = dishes[index];
          return ListTile(
            leading: Hero(
              tag: dish.name,
              child: Image.asset(dish.imagePath, width: 50, height: 50),
            ),
            title: Text(dish.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DishesDetailScreen(dishes: dish),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DishesDetailScreen extends StatelessWidget {
  final Dishes dishes;

  const DishesDetailScreen({Key? key, required this.dishes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(dishes.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: dishes.name,
              child: Image.asset(dishes.imagePath, width: 200, height: 200),
            ),
            SizedBox(height: 20),
            Text(
              'Ingredients',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            ...dishes.ingredients.map((ingredient) => ListTile(
                  leading: Icon(Icons.check_circle_outline),
                  title: Text(ingredient),
                )),
          ],
        ),
      ),
    );
  }
}
