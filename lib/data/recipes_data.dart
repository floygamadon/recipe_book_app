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
];