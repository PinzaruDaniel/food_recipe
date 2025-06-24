import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecipeRecommWidget extends StatelessWidget {
  const RecipeRecommWidget({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Recipes recomendation',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Get your personalized recipes recommendation in a 4 steps',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SvgPicture.asset(
                      'assets/castroncusupa.svg',
                      semanticsLabel: 'Castron',
                      height: 75,
                      width:50,
                    ),
                  ],
              ),
          ),

        ],
      ),

    );
  }
}
