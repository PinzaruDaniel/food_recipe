import 'package:get/get.dart';

class Author{
  final int id;
  final String name;
  final int recipeCounts;
  final int likes;
  
  Author({
    required this.id,
    required this.name,
    required this.recipeCounts,
    required this.likes
});
  
}

class AuthorController extends GetxController{
  RxList<Author> authors=RxList([]);
  
  @override
  void onInit(){
    super.onInit();
    loadAuthors();
  }
  
  void loadAuthors(){
    authors.value=[
      Author(id:1, name: 'James Nikidaw', recipeCounts: 124, likes: 41391),
      Author(id: 2, name: 'Mirlam belina', recipeCounts: 98, likes: 7323),
    ];
  }
  Author? getAuthorById(int id){
    return authors.firstWhereOrNull((author)=>author.id==id);
  }
}