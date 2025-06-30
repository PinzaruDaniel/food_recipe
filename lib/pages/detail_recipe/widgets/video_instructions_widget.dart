import 'package:flutter/material.dart';

import '../../../view/view_models.dart';
import '../../home/widgets/header_title_widget.dart';

class VideoInstructionsWidget extends StatefulWidget {
  const VideoInstructionsWidget({super.key, required this.recipes});

  final RecipeViewModel recipes;

  @override
  State<VideoInstructionsWidget> createState() => _VideoInstructionsWidgetState();
}

class _VideoInstructionsWidgetState extends State<VideoInstructionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTitleWidget(titleKey: 'How to video', titleStyle: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          SizedBox(
            height: 160,
            child: widget.recipes.videoSteps.isNotEmpty
                ? ListView.builder(
                    padding: const EdgeInsets.only(top: 8, left: 24, right: 8),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.recipes.videoSteps.length,
                    itemBuilder: (context, index) {
                      var section = widget.recipes.videoSteps[index];

                      return _videoItem(section);
                    },
                  )
                : Container(height: 200, width: 150, color: Colors.deepOrange),
          ),
        ],
      ),
    );
  }

  Widget _videoItem(VideoStep section) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 160,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Image(image: AssetImage(section.videoUrl), width: double.infinity, height: 80, fit: BoxFit.cover),
            ),

            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    section.videoTitle,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: -0.2),
                  ),
                  SizedBox(height: 6),
                  Text(section.videoDuration, style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
