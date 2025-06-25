import 'package:get/get.dart';
import '../../view/view_models.dart';

class HomeController extends GetxController {
  RxList<RecipeViewModel> recipes = RxList([]);
  RxList<AuthorViewModel> authors=RxList([]);
  RxString name=RxString('Alina');
  void initRecipe() {
    recipes.value = [
    RecipeViewModel(name: 'Spaghetti Bolognese', type: 'Pasta', imageUrl: 'assets/spaghetti.svg',
    duration: '30-45 minutes', difficulty: 'Medium', authorID: 2),
    RecipeViewModel(name: 'Classic Beef Steak', type: 'Meat', imageUrl: 'assets/beefstake.svg',
    duration: '30-45 minutes', difficulty: 'Easy', authorID: 1),
    ];
  }
  void initAuthors(){
    authors.value=[
      AuthorViewModel(id: 1, name: 'James Nikidaw', image: 'assets/profile1.png', recipeCounts: 124, likes: 41391),
      AuthorViewModel(id: 2, name: 'Mirlam belina', image: 'assets/profile2.png', recipeCounts: 98, likes: 7323),
    ];
  }

}
