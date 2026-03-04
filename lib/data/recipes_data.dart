import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: 'Spaghetti with Tomato Sauce and Ground Beef',
    imagePath: 'assets/images/pasta.jpg',
    ingredients: [
      'Spaghetti pasta',
      'Ground beef',
      'Tomato sauce',
      'Garlic',
      'Onion',
      'Olive oil',
      'Salt',
      'Black pepper'
    ],
    instructions:
        '1. Boil spaghetti at 212 fahrenheit degree in salted water until half hard and soft.\n'
        '2. Heat olive oil until slightly smoke at in a pan and saute chopped onion and garlic.\n'
        '3. Add ground beef and cook until browned.\n'
        '4. Pour in tomato sauce and simmer for 10 minutes.\n'
        '5. Season with salt and black pepper.\n'
        '6. Mix sauce with cooked spaghetti or pour over the top.\n'
        '7. Serve while hot.',
  ),

  Recipe(
    name: 'Caesar Salad',
    imagePath: 'assets/images/salad.jpg',
    ingredients: [
      'Green lettuce',
      'Toasted cubic breads',
      'Any cheese',
      'Caesar dressing',
      'Chopped/sliced vegetables (onions, tomatoes,...)',
      'Grilled chicken (optional)',
      'Black pepper',
      'Sliced olive',
      'Olive oil',
      'Boiled eggs (optional)'
    ],
    instructions:
        '1. Wash and chop the green lettuce.\n'
        '2. Place lettuce in a large bowl.\n'
        '3. Add the sliced olive along with any other chopped/sliced veggies.\n'
        '4. Add toasted cubic bread and grated any favorite cheese.\n'
        '5. Pour Caesar dressing over the salad.\n'
        '6. Toss gently to coat everything evenly.\n'
        '7. Add grilled chicken if desired.\n'
        '8. Sprinkle black pepper and serve fresh.',
  ),
];
