import 'package:get/get.dart';
import '../controllers/recipe_controller.dart';

class HomeController extends GetxController {
  RxList<RecipeViewModel> recipes = RxList([]);
  RxString name=RxString('Alina');
  void initRecipe() {
    recipes.value = [
      RecipeViewModel(
        name: 'Spaghetti Bolognese',
        type: 'Pasta',
        imageUrl:
            'https://media.istockphoto.com/id/1429067111/photo/spagh'
            'etti-bolognese-top-view-close-up-no-people-homemade.jpg?s=1024x1024&w=is'
            '&k=20&c=KxPM3j4W-PxrLtUYs2fKzXSXSGQq4tLy3_cw2RtVTUQ=',
        duration: '30-45 minutes',
        difficulty: 'Medium',
        authorID: 2,
      ),
      RecipeViewModel(
        name: 'Classic Beef Steak',
        type: 'Meat',
        imageUrl:
            'https://img.freepik.com/free-photo/side-view-steak-with-tomato-paper-spicy-sauce-steak-board_176474-3229.jpg',
        duration: '30-45 minutes',
        difficulty: 'Easy',
        authorID: 1,
      ),
    ];
  }
}
