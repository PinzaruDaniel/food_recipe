import 'package:flutter/material.dart';

class HeaderTitleWidget extends StatefulWidget {
  const HeaderTitleWidget({super.key, required this.titleKey, required this.seeAll});
  final String titleKey;
  final Function seeAll;

  @override
  State<HeaderTitleWidget> createState() => _HeaderTitleWidgetState();
}

class _HeaderTitleWidgetState extends State<HeaderTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
              Text('${widget.titleKey}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: -0.2)),
          InkWell(
            onTap: (){
              widget.seeAll.call();
            },
            child: Text(
              'See all',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffc77d0a)),
            ),
          ),
        ],
      ),
    );
  }
}
