import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailsScreen extends StatefulWidget {
  final Recipe recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {

    final recipe = widget.recipe;

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),

        actions: [

          // Favorite button with background + shadow
          Container(
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.25),
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),

            child: IconButton(
              icon: Icon(
                recipe.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: recipe.isFavorite
                    ? Colors.red
                    : Colors.white,
              ),

              onPressed: () {
                setState(() {
                  recipe.isFavorite = !recipe.isFavorite;
                });
              },
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Recipe image
            Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: Colors.white,
                  child: Image.asset(
                    recipe.imagePath,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Recipe name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                recipe.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 14),

            // Ingredients title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Ingredients list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: recipe.ingredients
                    .map(
                      (ingredient) => Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          '• $ingredient',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),

            const SizedBox(height: 16),

            // Instructions title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Instructions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Instructions text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                recipe.instructions,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.4,
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}