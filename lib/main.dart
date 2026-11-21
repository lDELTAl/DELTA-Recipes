import 'package:flutter/material.dart';
import 'RecipeListPage.dart';
import 'Recipe.dart';

void main() {
  final List<Recipe> recipes = [
    Recipe(
      name: 'Raspberry Maple Pancakes',
      imageUrl: 'assets/images/Raspberry Maple Pancakes.jpg',
      description:
          'Fluffy golden pancakes stacked high, topped with fresh raspberries and drizzled with rich maple syrup.',
      prepTime: 900,
    ),
    Recipe(
      name: 'Crunchy Snack Platter',
      imageUrl: 'assets/images/Crunchy Snack Platter.jpg',
      description:
          'A mix of salted pretzels, roasted peanuts, and crispy savory bites served for easy snacking.',
      prepTime: 120,
    ),
    Recipe(
      name: 'Savory Puff',
      imageUrl: 'assets/images/Savory Puff Pastry Pinwheels.jpg',
      description:
          'Flaky golden puff pastry spirals filled with seasoned savory filling and baked until crisp.',
      prepTime: 1200,
    ),
    Recipe(
      name: 'Garlic Herb French Fries',
      imageUrl: 'assets/images/Garlic Herb French Fries.jpg',
      description:
          'Crispy golden french fries tossed with minced garlic, salt, and fresh chopped herbs in a white cup.',
      prepTime: 600,
    ),
    Recipe(
      name: 'Smoked Salmon',
      imageUrl: 'assets/images/Smoked Salmon Cream Canapes.jpg',
      description:
          'Toasted whole-grain crackers layered with herbed cream cheese, folded smoked salmon, and green chives.',
      prepTime: 300,
    ),
    Recipe(
      name: 'Pesto Farfalle Pasta Salad',
      imageUrl: 'assets/images/Pesto Farfalle Pasta Salad.jpg',
      description:
          'Bow-tie pasta tossed in green pesto sauce with halved cherry tomatoes and fresh leafy greens.',
      prepTime: 900,
    ),
    Recipe(
      name: 'YogurtParfait',
      imageUrl: 'assets/images/YogurtParfait.jpg',
      description:
          'Creamy yogurt layered with granola, fresh strawberries, and blackberries in a glass.',
      prepTime: 300,
    ),
    Recipe(
      name: 'Seared Steak',
      imageUrl: 'assets/images/SearedSteakWithAsparagus.jpg',
      description:
          'Juicy sliced steak seared with black pepper, served with tender asparagus and roasted cherry tomatoes.',
      prepTime: 1500,
    ),
    Recipe(
      name: 'Pumpkin Soup',
      imageUrl: 'assets/images/PumpkinSoup.jpg',
      description:
          'A smooth, creamy pumpkin soup topped with roasted pumpkin seeds.',
      prepTime: 2400,
    ),
    Recipe(
      name: 'Mushroom Olive Pizza',
      imageUrl: 'assets/images/MushroomOlivePizza.jpg',
      description:
          'Thin-crust pizza topped with melted cheese, sausage, mushrooms, black olives, and green peppers.',
      prepTime: 1200,
    ),
  ];

  runApp(MyApp(recipes: recipes));
}

class MyApp extends StatelessWidget {
  final List<Recipe> recipes;

  const MyApp({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      debugShowCheckedModeBanner: false,
      home: RecipeListPage(recipes: recipes),
    );
  }
}
