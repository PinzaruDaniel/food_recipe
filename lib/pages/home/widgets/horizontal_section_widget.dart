import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalSection<T> extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAll;
  final RxList<T> items;
  final Widget Function(T item) itemBuilder;

  const HorizontalSection({
    super.key,
    required this.title,
    this.onSeeAll,
    required this.items,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              if (onSeeAll != null)
                GestureDetector(
                  onTap: onSeeAll,
                  child: const Text('See all', style: TextStyle(color: Colors.orange)),
                ),
            ],
          ),
          const SizedBox(height: 8),

          SizedBox(
            height: 220,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, index) => itemBuilder(items[index]),
            ),
          ),
        ],
      ),
    );
  }
}
