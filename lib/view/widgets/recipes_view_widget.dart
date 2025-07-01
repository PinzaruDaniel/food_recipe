import 'package:flutter/material.dart';

import '../../../view/view_models.dart';
import '../../pages/detail_recipe/detail_page.dart';
import 'description_recipe_widget.dart';

class RecipesListRowsWidget extends StatefulWidget {
  const RecipesListRowsWidget({super.key, required this.itemRecipes, required this.itemAuthors});

  final RecipeViewModel itemRecipes;
  final AuthorViewModel itemAuthors;

  @override
  State<RecipesListRowsWidget> createState() => _RecipesListRowsWidgetState();
}

class _RecipesListRowsWidgetState extends State<RecipesListRowsWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(recipe: widget.itemRecipes,)));
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          width: 200,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                child: Image(
                  image: AssetImage(widget.itemRecipes.imageUrl),
                  width: double.infinity,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.itemRecipes.name,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: -0.2),
                    ),
                    const SizedBox(height: 4),
                    Text(widget.itemRecipes.type, style: TextStyle(fontSize: 14, color: Colors.grey.shade600)),

                    const SizedBox(height: 12),
                    DescriptionRecipeWidget(icon: 'assets/clock.svg', nameCreator: widget.itemRecipes.duration),

                    const SizedBox(height: 8),
                    DescriptionRecipeWidget(icon: 'assets/medal.svg', nameCreator: widget.itemRecipes.difficulty),

                    const SizedBox(height: 8),
                    DescriptionRecipeWidget(icon: widget.itemAuthors.imageUrl, nameCreator: widget.itemAuthors.name),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
