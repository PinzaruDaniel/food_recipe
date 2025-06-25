class AuthorViewModel{
  final int id;
  final String name;
  final String image;
  final int recipeCounts;
  final int likes;

  AuthorViewModel({
    required this.id,
    required this.name,
    required this.image,
    required this.recipeCounts,
    required this.likes
  });

}

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