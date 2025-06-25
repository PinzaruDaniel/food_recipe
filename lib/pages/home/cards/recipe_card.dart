import 'package:flutter/material.dart';
import '../../../view/view_models.dart';


class RecipeCard extends StatelessWidget {
  final RecipeViewModel recipe;
  const RecipeCard({super.key, required this.recipe});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.network(recipe.imageUrl, height: 100, fit: BoxFit.cover),
          const SizedBox(height: 8),
          Text(recipe.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
