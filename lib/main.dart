import 'package:flutter/material.dart';
import 'package:food_recipe/pages/home/home_page.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title: 'Food Recipe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      initialRoute: "/",
      //home: HomePage(),
      getPages: [
        GetPage(name: "/", page: ()=> HomePage())
      ],
    );
  }
}