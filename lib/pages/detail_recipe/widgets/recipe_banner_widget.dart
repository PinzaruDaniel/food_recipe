import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../view/view_models.dart';

class RecipeBannerWidget extends StatefulWidget {
  const RecipeBannerWidget({super.key, required this.recipe});

  final RecipeViewModel recipe;

  @override
  State<RecipeBannerWidget> createState() => _RecipeBannerWidgetState();
}

class _RecipeBannerWidgetState extends State<RecipeBannerWidget> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image(
              image: AssetImage(widget.recipe.imageUrl),
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: ReadMoreText(
              widget.recipe.description,
              style: TextStyle(
                fontSize: 12,
              ),
              trimMode: TrimMode.Line,
              trimLines: 2,
              trimCollapsedText: ' Show more',
              trimExpandedText: ' Show less',
              lessStyle: TextStyle(fontSize: 14, color: Colors.grey),
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
