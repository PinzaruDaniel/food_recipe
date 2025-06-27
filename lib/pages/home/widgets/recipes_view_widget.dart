import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../view/view_models.dart';
import '../../detail_page.dart';

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
      onTap: (){
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetailPage()),
          );
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
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
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
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/clock.svg',
                            semanticsLabel: 'Clock',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            widget.itemRecipes.duration,
                            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/medal.svg',
                            semanticsLabel: 'Medal',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            widget.itemRecipes.difficulty,
                            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          CircleAvatar(radius: 10, backgroundImage: AssetImage(widget.itemAuthors.imageUrl)),
                          const SizedBox(width: 8),
                          Text(
                            widget.itemAuthors.name,
                            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                          ),
                        ],
                      ),
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
