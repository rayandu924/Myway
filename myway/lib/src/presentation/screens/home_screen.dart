import 'package:flutter/material.dart';
import '../widgets/tile.dart';
import '../widgets/grid.dart';
import '../widgets/carousel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Exemple de données pour le carrousel et la grille
    final List<String> exampleData = ['Item 1', 'Item 2', 'Item 3'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Exemple d'utilisation du Tile
            Tile(
              leading: Icon(Icons.star),
              title: Text('Tuile Générique'),
              subtitle: Text('Sous-titre'),
              trailing: Icon(Icons.arrow_forward),
            ),

            SizedBox(height: 20),

            // Exemple d'utilisation du Grid
            Grid<String>(
              items: exampleData,
              itemBuilder: (item) => Card(
                child: Center(child: Text(item)),
              ),
            ),

            SizedBox(height: 20),

            // Exemple d'utilisation du Carousel
            Carousel<String>(
              items: exampleData,
              itemBuilder: (item) => Container(
                width: double.infinity,
                color: Colors.blue,
                child: Text(item, style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
