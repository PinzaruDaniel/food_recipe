/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DescriptionRowWidget extends StatelessWidget {
  const DescriptionRowWidget({super.key, required this.icon, required this.nameCreator});

  final String icon;
  final String nameCreator;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        nameCreator.contains('.svg')
            ? SvgPicture.asset('assets/medal.svg', semanticsLabel: 'Medal', height: 20, width: 20)
            : CircleAvatar(radius: 10, backgroundImage: AssetImage('${itemAuthors.imageUrl}')),
        SizedBox(width: 8),
        Text(itemRecipes.difficulty, style: TextStyle(fontSize: 14, color: Colors.grey.shade600)),
      ],
    );
  }
}*/
