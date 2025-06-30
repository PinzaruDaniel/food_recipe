import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeRecommWidget extends StatelessWidget {
  const RecipeRecommWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.grey.shade300),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recipes recomendation',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: -0.2),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Get your personalized recipes recommendation in a 4 steps',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset('assets/castroncusupa.svg', semanticsLabel: 'Castron', height: 59),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFFFF4E5),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(width: 1, color: Color(0xfff9e2be)),
                    ),
                  ),
                  child: const Text(
                    "Get started",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, letterSpacing: -0.2),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(width: 1, color: Colors.black12),
                    ),
                  ),
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      letterSpacing: -0.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
