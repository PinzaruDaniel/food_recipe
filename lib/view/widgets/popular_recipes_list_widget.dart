
import 'package:flutter/material.dart';

import 'package:food_recipe/view/widgets/recipes_view_widget.dart';
import '../../../view/view_models.dart';
import 'header_title_widget.dart';

class PopularRecipesListWidget extends StatefulWidget {
  const PopularRecipesListWidget({super.key, required this.recipes, required this.authors});

  final List<RecipeViewModel> recipes;
  final List<AuthorViewModel> authors;

  @override
  State<PopularRecipesListWidget> createState() => _PopularRecipesListWidgetState();
}

class _PopularRecipesListWidgetState extends State<PopularRecipesListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderTitleWidget(titleKey: 'Popular recipes',
            titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: -0.2), seeAll: (){}),

        SizedBox(
          height: 295,
          child: widget.recipes.isNotEmpty
              ? ListView.builder(
                  padding: const EdgeInsets.only(top: 8, left: 24, right: 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.recipes.length,
                  itemBuilder: (context, index) {
                    var itemRecipes = widget.recipes[index];
                    var itemAuthors = widget.authors[index];
                    return RecipesListRowsWidget(itemRecipes: itemRecipes, itemAuthors: itemAuthors);
                  },
                )
              : Container(height: 200, width: 150, color: Colors.deepOrange),
        ),
      ],
    );
  }
  @override
  void initState() {
    super.initState();
    widget.authors.sort((a,b)=>b.id.compareTo(a.id));
  }
}
