import 'package:get/get.dart';
import '../../view/view_models.dart';

class HomeController extends GetxController {
  RxList<RecipeViewModel> recipes = RxList([]);
  RxList<AuthorViewModel> authors = RxList([]);
  RxString name = RxString('Alina');

  void initRecipe() {
    recipes.value = [
      RecipeViewModel(
        name: 'Spaghetti Bolognese',
        type: 'Pasta',
        imageUrl: 'assets/spaghetti-bolognese.png.webp',
        duration: '30-45 minutes',
        difficulty: 'Medium',
        authorID: 2,
          description: 'A hearty Italian classic made with ground beef, vegetables, tomato sauce, and herbs, served over al dente spaghetti.',

          ingredients: [
            '400g (14 oz) spaghetti',
            '2 tablespoons olive oil',
            '1 onion, finely chopped',
            '2 garlic cloves, minced',
            '1 carrot, finely chopped',
            '1 celery stalk, finely chopped',
            '500g (1 lb) ground beef',
            '2 tablespoons tomato paste',
            '400g (14 oz) canned crushed tomatoes',
            '1 teaspoon dried oregano',
            '1 teaspoon dried basil',
            'Salt and black pepper to taste',
            '1/2 cup whole milk (optional, for richness)',
            'Freshly grated Parmesan cheese, for serving',
            'Fresh basil or parsley, for garnish (optional)'
          ],

          instructions: [
            InstructionStep(
              title: 'Prepare the Ingredients:',
              steps: [
                'Finely chop the onion, garlic, carrot, and celery.',
                'Open and prepare the canned tomatoes and other ingredients for easy access.'
              ],
            ),
            InstructionStep(
              title: 'Cook the Bolognese Sauce:',
              steps: [
                'Heat olive oil in a large pan over medium heat.',
                'Add chopped onion, garlic, carrot, and celery. Sauté for about 5–7 minutes until soft.',
                'Add the ground beef and cook until browned, breaking it up with a spoon.',
                'Stir in the tomato paste and cook for 2 minutes.',
                'Add crushed tomatoes, oregano, basil, salt, and pepper.',
                'Lower the heat and let the sauce simmer gently for 20–30 minutes, stirring occasionally.',
                'Optionally, stir in the milk toward the end of simmering for added richness.'
              ],
            ),
            InstructionStep(
              title: 'Cook the Spaghetti:',
              steps: [
                'Bring a large pot of salted water to a boil.',
                'Cook the spaghetti according to the package instructions until al dente.',
                'Drain the pasta and set aside, reserving a little pasta water.'
              ],
            ),
            InstructionStep(
              title: 'Combine and Serve:',
              steps: [
                'Toss the cooked spaghetti with the Bolognese sauce or serve the sauce on top.',
                'If the sauce is too thick, add a splash of reserved pasta water.',
                'Serve hot, topped with freshly grated Parmesan and optional fresh herbs.'
              ],
            )
          ],
        videoSteps: [
          VideoStep(
              videoUrl: 'assets/maxresdefault.png',
              videoTitle: 'Step 1',
              videoDuration: '4 mnts'),
          VideoStep(
              videoUrl: 'assets/Rectangle1.png',
              videoTitle: 'Step 2',
              videoDuration: '4 mnts'),
          VideoStep(videoUrl: 'assets/Rectangle2.png',
              videoTitle: 'Step 3',
              videoDuration: '5 mnts'),
        ],


      ),
      RecipeViewModel(
        name: 'Classic Beef Steak',
        type: 'Meat',
        imageUrl: 'assets/beefstake.png',
        duration: '30-45 minutes',
        difficulty: 'Easy',
        authorID: 1,
        description:
            'Beef steak is a classic and beloved dish made from tender cuts of beef,'
            ' typically seasoned and grilled to perfection. '
            'The result is a succulent and flavorful piece of meat that is often enjoyed with'
            ' various accompaniments like vegetables, potatoes, or sauces.',
        ingredients: [
          '4 beef steak cuts (e.g., sirloin, ribeye, or fillet)',
          'Salt and black pepper to taste',
          '2 tablespoons olive oil',
          '2 cloves of garlic, minced',
          'Fresh herbs (rosemary or thyme), choppe',
          'Butter for basting (optional)',
        ],
        instructions: [
          InstructionStep(
            title: 'Prepare the Steaks:',
            steps: [
              'Take the beef steaks out of the refrigerator and'
                  ' let them come to room temperature for about 30 minutes.',
              'Season both sides of the steaks generously with salt and black pepper.'
                  ' Optionally, sprinkle chopped fresh herbs over the steaks.'
            ],
          ),
          InstructionStep(title: 'Preheat the Grill or Pan:', steps: [
            'Preheat your grill or a heavy skillet over medium-high heat. Add olive oil and let it heat.'
          ]),
          InstructionStep(
            title: 'Cook the Steaks:',
            steps: [
              'Place the steaks on the hot grill or pan and sear without moving them for 2–3 minutes.',
              'Flip the steaks and sear the other side for another 2–3 minutes.',
              'Reduce heat to medium, then add 2 tablespoons of butter, a few smashed garlic cloves, and herb sprigs (if using) to the pan.',
              'Tilt the pan slightly and spoon the melted butter over the steaks for 1–2 minutes to baste them.'
            ],
          ),
          InstructionStep(
            title: 'Check Doneness:',
            steps: [
              'Use an instant-read thermometer to check internal temperature:',
              ' - Rare: 120–125°F (49–52°C)',
              ' - Medium Rare: 130–135°F (54–57°C)',
              ' - Medium: 140–145°F (60–63°C)',
              'Adjust cooking time as needed based on thickness and preferred doneness.'
            ],
          ),
          InstructionStep(
            title: 'Rest and Serve:',
            steps: [
              'Transfer the steaks to a plate and let them rest for 5–10 minutes before cutting.',
              'Slice against the grain if needed and serve with your favorite sides.'
            ],
          ),
        ],
        videoSteps: [
          VideoStep(
              videoUrl: 'assets/maxresdefault.png',
              videoTitle: 'Step 1',
              videoDuration: '4 mnts'),
          VideoStep(
              videoUrl: 'assets/Rectangle1.png',
              videoTitle: 'Step 2',
              videoDuration: '4 mnts'),
          VideoStep(videoUrl: 'assets/Rectangle2.png',
              videoTitle: 'Step 3',
              videoDuration: '5 mnts'),
        ],
      ),
    ];
  }

  void initAuthors() {
    authors.value = [
      AuthorViewModel(id: 1, name: 'James Nikidaw', imageUrl: 'assets/profile2.png', recipeCounts: 124, likes: 41391),
      AuthorViewModel(id: 2, name: 'Mirlam belina', imageUrl: 'assets/profile1.png', recipeCounts: 98, likes: 7323),
    ];
  }
}
