import 'package:flutter/material.dart';
import 'package:food_recipe/home/home_controller.dart';
import 'package:food_recipe/home/widgets/recipe_recom_widget.dart';
import 'package:food_recipe/home/widgets/user_banner_widget.dart';
import 'package:get/get.dart';
import '../controllers/recipe_controller.dart';
import '../controllers/author_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController get homeController => Get.find();

  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Obx(() => UserBannerWidget(name: homeController.name.value)),
              const SizedBox(height: 16,),
              RecipeRecommWidget(),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
