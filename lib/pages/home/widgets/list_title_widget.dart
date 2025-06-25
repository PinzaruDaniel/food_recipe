import 'package:flutter/material.dart';

class ListTitleWidget extends StatelessWidget {
  const ListTitleWidget({super.key, required this.onSeeAll, required this.title});

  final Function onSeeAll;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        GestureDetector(
          onTap: () {
            onSeeAll.call();
          },
          child: const Text('See all', style: TextStyle(color: Colors.orange)),
        ),
      ],
    );
  }

  void onTap(){}
}
