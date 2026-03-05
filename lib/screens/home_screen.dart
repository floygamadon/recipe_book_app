import 'package:flutter/material.dart';
import '../data/recipes_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        title: const Text(
          "Recipe Book",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
            shadows: [
              Shadow(
                blurRadius: 6,
                color: Colors.black,
                offset: Offset(2, 2),
              )
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),

      body: Stack(
        children: [

          // Full screen background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/homescreen.jpg',
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),

          // Light overlay
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.15),
            ),
          ),

          // Recipe list
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: ListView.builder(
              itemCount: sampleRecipes.length,
              itemBuilder: (context, index) {

                final recipe = sampleRecipes[index];

                return Card(
                  color: Colors.white.withOpacity(0.9),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),

                  child: ListTile(

                    // recipe image
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          recipe.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // recipe name
                    title: Text(
                      recipe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // ❤️ favorite button
                    trailing: IconButton(
                      icon: Icon(
                        recipe.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: recipe.isFavorite
                            ? Colors.red
                            : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          recipe.isFavorite = !recipe.isFavorite;
                        });
                      },
                    ),

                    // navigate to details
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailsScreen(recipe: recipe),                  
                        ),
                      );
                      
                      // Rebuild HomeScreen so the heart updates after returning
                      setState(() {});
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}