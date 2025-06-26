import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../view/view_models.dart';

class PopularAuthorsListWidget extends StatefulWidget {
  const PopularAuthorsListWidget({super.key, required this.recipes, required this.authors});

  final List<RecipeViewModel> recipes;
  final List<AuthorViewModel> authors;

  @override
  State<PopularAuthorsListWidget> createState() => _PopularAuthorsListWidgetState();
}

class _PopularAuthorsListWidgetState extends State<PopularAuthorsListWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular creator',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See all',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffc77d0a)
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 3),

          SizedBox(
            height: 350,
            child: widget.recipes.isNotEmpty
                ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.recipes.length,
              itemBuilder: (context, index) {
                var itemRecipes = widget.recipes[index];
                var itemAuthors = widget.authors[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 8),
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
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(16),
                            topLeft: Radius.circular(16),
                          ),
                          child: Image(
                            image: AssetImage(itemRecipes.imageUrl),
                            width: double.infinity,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                itemRecipes.name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                itemRecipes.type,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Text(
                                itemRecipes.duration,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                itemRecipes.difficulty,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 14,
                                    backgroundImage: AssetImage(itemAuthors.imageUrl),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    itemAuthors.name,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade400,
                                    ),
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
            )
                : Container(
              height: 200,
              width: 150,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    widget.authors.sort((a, b) => b.id.compareTo(a.id));
  }
}
