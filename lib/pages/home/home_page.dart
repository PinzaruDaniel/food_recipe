import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import '../../view/widgets/popular_author_list_widget.dart';
import '../../view/widgets/popular_recipes_list_widget.dart';
import '../../view/widgets/recipe_recom_widget.dart';
import '../../view/widgets/user_banner_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController get homeController => Get.find();

  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
    homeController.initRecipe();
    homeController.initAuthors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5eb),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 60),
        child: Column(
          children: [

            Stack(
              children: [
                Obx(() => UserBannerWidget(name: homeController.name.value)),
                //Align(
                  //alignment: Alignment.bottomLeft,
                  //child: RecipeRecommWidget()),
                Align(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 1.5,
                  child: RecipeRecommWidget(),
                ),

                //Padding(padding: const EdgeInsets.only(top: 125, left: 24, right: 24), child: RecipeRecommWidget()),
              ],
            ),
            Obx(
              () => PopularRecipesListWidget(
                recipes: homeController.recipes.value,
                authors: homeController.authors.value,
              ),
            ),

            Obx(() => PopularAuthorsListWidget(titleKey: 'Popular creator', authors: homeController.authors.value)),

            Obx(() => PopularAuthorsListWidget(titleKey: 'Featured', authors: homeController.authors.value)),

          ],
        ),
      ),
    );
  }
}
