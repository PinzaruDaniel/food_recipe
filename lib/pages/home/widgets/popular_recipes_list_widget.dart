import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../view/view_models.dart';

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
    return  SizedBox(
          height: 350,
          child: widget.recipes.isNotEmpty?
          ListView.builder(

            scrollDirection: Axis.horizontal,
            itemCount: widget.recipes.length ,
            itemBuilder: (context, index) {
              var itemRecipes = widget.recipes[index];
              var itemAuthors= widget.authors[index];
              return Padding(
                padding: const EdgeInsets.only(top:16, left: 16, right: 8),
                child: Container(
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            topLeft: Radius.circular(16)
                        ),
                        child: Image(
                          image: AssetImage(itemRecipes.imageUrl),
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Wrap the text and avatar row in Padding
                      Padding(
                        padding: const EdgeInsets.all(12.0), // adjust padding as needed
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                itemRecipes.name,
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                            ),
                            Text(
                              itemRecipes.type,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                            ),
                            SizedBox(height: 14),
                            Text(
                              itemRecipes.duration,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                            ),
                            SizedBox(height: 8),
                            const SizedBox(width: 4),
                            Text(
                              itemRecipes.difficulty,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                            ),
                            SizedBox(height: 12),

                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 14,
                                  backgroundImage: AssetImage(itemAuthors.imageUrl),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  itemAuthors.name,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
                );
            },
          ): Container(
            height: 200,
            width: 150,
            color: Colors.deepOrange,
          )
    );
  }
}
