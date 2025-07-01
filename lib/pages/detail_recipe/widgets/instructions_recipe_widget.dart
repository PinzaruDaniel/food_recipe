import 'package:flutter/material.dart';
import '../../../view/view_models.dart';
import '../../../view/widgets/header_title_widget.dart';

class InstructionsRecipeWidget extends StatefulWidget {
  const InstructionsRecipeWidget({super.key, required this.recipe});

  final RecipeViewModel recipe;

  @override
  State<InstructionsRecipeWidget> createState() => _InstructionsRecipeWidgetState();
}

class _InstructionsRecipeWidgetState extends State<InstructionsRecipeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: const Text("Instructions", style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        const SizedBox(height: 12),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.recipe.instructions.map((section) {
                return Container(
                  width: 280,
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(section.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      const SizedBox(height: 8),
                      ...section.steps.map(
                        (step) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text("• ", style: TextStyle(fontSize: 12)),
                            ),
                            Expanded(child: Text(step, style: const TextStyle(fontSize: 12))),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
