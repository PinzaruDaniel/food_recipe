import 'package:get/get.dart';

class RecipeViewModel {
  final String name;
  final String type;
  final String imageUrl;
  final String duration;
  final String difficulty;
  final int authorID;

  RecipeViewModel({
    required this.name,
    required this.type,
    required this.imageUrl,
    required this.duration,
    required this.difficulty,
    required this.authorID,
  });
}

class RecipeController extends GetxController {




}
