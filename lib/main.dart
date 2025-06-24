import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home/home_page.dart';


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
        fontFamily: 'Aerial',
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}