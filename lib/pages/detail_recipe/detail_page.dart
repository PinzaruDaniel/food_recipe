import 'package:flutter/material.dart';
import 'package:food_recipe/pages/detail_recipe/widgets/ingredients_recipe_widget.dart';
import 'package:food_recipe/pages/detail_recipe/widgets/instructions_recipe_widget.dart';
import 'package:food_recipe/pages/detail_recipe/widgets/recipe_banner_widget.dart';
import 'package:food_recipe/pages/detail_recipe/widgets/video_instructions_widget.dart';
import '../../view/view_models.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this .recipe});
  final RecipeViewModel recipe;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5eb),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.recipe.name),
      ),
      body: SingleChildScrollView(
          child: (Column(
        children: [
          RecipeBannerWidget(recipe: widget.recipe,),
          SizedBox(height:24),
          IngredientsRecipeWidget(recipes: widget.recipe),
          VideoInstructionsWidget(recipes: widget.recipe),
          InstructionsRecipeWidget(recipe: widget.recipe),

          SizedBox(height:50)

        ],
      )
          ),
      ),
    );

  }
}
