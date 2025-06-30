class AuthorViewModel{
  final int id;
  final String name;
  final String imageUrl;
  final int recipeCounts;
  final int likes;

  AuthorViewModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.recipeCounts,
    required this.likes
  });
}

class InstructionStep{
  final String title;
  final List<String> steps;
  InstructionStep({
    required this.title,
    required this.steps
});

}
class VideoStep{
  final String videoUrl;
  final String videoTitle;
  final String videoDuration;
  VideoStep({
    required this.videoUrl,
    required this.videoTitle,
    required this.videoDuration
});
}

class RecipeViewModel {
  final String name;
  final String type;
  final String imageUrl;
  final String duration;
  final String difficulty;
  final int authorID;
  final String description;
  final List<String> ingredients;
  final List<InstructionStep> instructions;
  final List<VideoStep> videoSteps;


  RecipeViewModel({
    required this.name,
    required this.type,
    required this.imageUrl,
    required this.duration,
    required this.difficulty,
    required this.authorID,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.videoSteps
  });
}

