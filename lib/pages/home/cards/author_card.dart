import 'package:flutter/material.dart';
import '../../../view/view_models.dart';

class AuthorCard extends StatelessWidget {
  final AuthorViewModel author;
  const AuthorCard({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(author.imageUrl),),
              const SizedBox(width: 8),
              Expanded(
                  child: Text(
                    author.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.menu_book, size: 14),
              const SizedBox(width: 4),
              Text('${author.recipeCounts}'),
              const SizedBox(width: 12),
              const Icon(Icons.favorite_border, size: 14),
              const SizedBox(width: 4),
              Text('${author.likes}'),
            ],
          ),
        ],
      ),
    );
  }
}
