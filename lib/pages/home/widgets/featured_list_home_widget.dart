import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../view/view_models.dart';

class FeaturedListHomeWidget extends StatefulWidget {
  const FeaturedListHomeWidget({super.key, required this.authors});

  final List<AuthorViewModel> authors;

  @override
  State<FeaturedListHomeWidget> createState() => _FeaturedListHomeWidgetState();
}

class _FeaturedListHomeWidgetState extends State<FeaturedListHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Featured', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text(
                  'See all',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xffc77d0a)),
                ),
              ],
            ),
          ),

          SizedBox(height: 3),

          SizedBox(
            height: 225,
            child: widget.authors.isNotEmpty
                ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.authors.length,
              itemBuilder: (context, index) {
                var itemAuthors = widget.authors[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 8),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: CircleAvatar(radius: 24, backgroundImage: AssetImage(itemAuthors.imageUrl)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                itemAuthors.name,
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                                    style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
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
                                    style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
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
                : Container(height: 200, width: 150, color: Colors.deepOrange),
          ),
        ],
      ),
    );
  }
}
