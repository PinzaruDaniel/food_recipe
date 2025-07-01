
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DescriptionRecipeWidget extends StatelessWidget {
  const DescriptionRecipeWidget({super.key, required this.icon, required this.nameCreator});

  final String icon;
  final String nameCreator;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon.endsWith('.svg')
            ? SvgPicture.asset(icon, height: 20, width: 20)
            : CircleAvatar(radius: 10, backgroundImage: AssetImage(icon)),
        SizedBox(width: 8),
        Text(nameCreator, style: TextStyle(fontSize: 14, color: Colors.grey.shade600)),
      ],
    );
  }
}
