import 'package:flutter/material.dart';

class HeaderTitleWidget extends StatefulWidget {
  const HeaderTitleWidget({
    super.key,
    required this.titleKey,
    this.titleStyle,
    this.seeAll,
    this.showButton=true,
  });

  final String titleKey;
  final TextStyle? titleStyle;
  final Function? seeAll;
  final bool showButton;

  @override
  State<HeaderTitleWidget> createState() => _HeaderTitleWidgetState();
}

class _HeaderTitleWidgetState extends State<HeaderTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.titleKey,
            style: widget.titleStyle ?? Theme.of(context).textTheme.titleMedium,
          ),
          if (widget.showButton && widget.seeAll!=null)
            InkWell(
              onTap: () {
                widget.seeAll?.call();
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
