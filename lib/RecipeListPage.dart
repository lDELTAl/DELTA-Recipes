import 'package:flutter/material.dart';
import 'Recipe.dart';
import 'RecipeDetailsPage.dart';
class RecipeListPage extends StatelessWidget {
  final List<Recipe> recipes;
  const RecipeListPage({super.key, required this.recipes});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('the Recipes'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, int index) {
          final recipe = recipes[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailsPage(recipe: recipe),
                ),
              );
            },
            child: Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset(
                    recipe.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 25),
                Text(recipe.name,
                style: const TextStyle(
                fontSize: 18,
                    fontWeight: FontWeight.bold
                ),







                )
              ],
            ),
          ),
          );
        },

      ),
    );
  }
}