import 'package:flutter/material.dart';
import 'package:food_recipe/pages/home/widgets/featured_list_home_widget.dart';
import 'package:food_recipe/pages/home/widgets/popular_author_list_widget.dart';
import 'package:food_recipe/pages/home/widgets/popular_recipes_list_widget.dart';
import 'package:food_recipe/pages/home/widgets/recipe_recom_widget.dart';
import 'package:food_recipe/pages/home/widgets/user_banner_widget.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

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
        child: Column(
          children: [
            Stack(
              children: [
                Obx(() => UserBannerWidget(name: homeController.name.value)),
                const SizedBox(height: 16),
                Padding(padding: const EdgeInsets.only(top: 125, left: 24, right: 24), child: RecipeRecommWidget()),
              ],
            ),
            Obx(
              () => PopularRecipesListWidget(
                recipes: homeController.recipes.value,
                authors: homeController.authors.value,
              ),
            ),

            const SizedBox(height: 10),

                Obx(
                  () =>
                      PopularAuthorsListWidget(
                        title: 'Popular creator',
                      authors: homeController.authors.value,
                    ),
                  ),
                    const SizedBox(height: 10),

                Obx(
                  () =>
                      PopularAuthorsListWidget(
                        title: 'Featured',
                      authors: homeController.authors.value,
                    ),
                  ),


          /*  const SizedBox(height: 10),
            Obx(
                ()=> FeaturedListHomeWidget(
                  authors:homeController.authors.value,
                )
            ),*/

          ],
        ),
      ),
    );
  }
}
