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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Recipes recommendation',
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
                  ],
                ),
              ),
              const SizedBox(width: 8),
              SvgPicture.asset(
                'assets/castroncusupa.svg',
                semanticsLabel: 'Castron',
                height: 75,
                width: 50,
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Buttons row
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFF4E5),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        width: 0.5,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  child: const Text("Get started",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        width: 0.5,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  child: const Text("Skip",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}