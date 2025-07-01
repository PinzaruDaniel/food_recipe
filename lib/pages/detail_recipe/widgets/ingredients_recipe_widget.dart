import 'package:flutter/material.dart';
import '../../../view/view_models.dart';
import '../../../view/widgets/header_title_widget.dart';

class IngredientsRecipeWidget extends StatelessWidget {
  const IngredientsRecipeWidget({super.key, required this.recipes});
  final RecipeViewModel recipes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderTitleWidget(
          titleKey: 'Ingredients',
          titleStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),

            padding: const EdgeInsets.only(top:16, left:16),
            child: ListView.builder(
              itemCount: recipes.ingredients.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                final section=recipes.ingredients[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('assets/Ellipse5.png')),
                      SizedBox(width: 6),
                      Text(section, style: TextStyle(fontSize: 12),),
                    ],
                  ),
                );
              }
            ),
          ),
        ),
      ],
    );
  }
}
