import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../view/view_models.dart';
import 'header_title_widget.dart';

class PopularAuthorsListWidget extends StatefulWidget {
  const PopularAuthorsListWidget({super.key, required this.authors, required this.title});
  final String title;
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
          HeaderTitleWidget(titleKey: widget.title, seeAll: (){},),

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
                                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: -0.2),
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/book.svg',
                                              semanticsLabel: 'Clock',
                                              height: 20,
                                              width: 20,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              '${itemAuthors.recipeCounts}',
                                              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/heart.svg',
                                              semanticsLabel: 'Medal',
                                              height: 20,
                                              width: 20,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              '${itemAuthors.likes}',
                                              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                                            ),
                                          ],
                                        ),
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