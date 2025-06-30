import 'package:flutter/material.dart';

import 'package:food_recipe/pages/home/widgets/header_title_widget.dart';
import 'package:food_recipe/pages/home/widgets/description_author_widget.dart';
import '../../../view/view_models.dart';

class PopularAuthorsListWidget extends StatefulWidget {
  const PopularAuthorsListWidget({super.key, required this.authors, required this.titleKey});

  final String titleKey;
  final List<AuthorViewModel> authors;

  @override
  State<PopularAuthorsListWidget> createState() => _PopularAuthorsListWidgetState();
}

class _PopularAuthorsListWidgetState extends State<PopularAuthorsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTitleWidget(titleKey: widget.titleKey,
          titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: -0.2), seeAll: (){}),

          SizedBox(
            height: 161,
            child: widget.authors.isNotEmpty
                ? ListView.builder(
                    padding: const EdgeInsets.only(top: 8, left: 24, right: 8),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.authors.length,
                    itemBuilder: (context, index) {
                      var itemAuthors = widget.authors[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          width: 170,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12, left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(radius: 16, backgroundImage: AssetImage(itemAuthors.imageUrl)),
                                const SizedBox(height: 7),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      itemAuthors.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.2,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    DescriptionAuthorWidget(icon: 'assets/book.svg', nameCreator: '${itemAuthors.recipeCounts}'),
                                    const SizedBox(height: 8),
                                    DescriptionAuthorWidget(icon: 'assets/heart.svg', nameCreator: '${itemAuthors.likes}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : Container(height: 200, width: 150, color: Colors.deepOrange),
          ),
        ],
      ),
    );
  }
}
