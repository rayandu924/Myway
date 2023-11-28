import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to Myway!'),
            SizedBox(height: 20), // Un peu d'espace
            CustomButton(
              title: 'Appuyez sur Moi',
              onPressed: () {
                // Action quand le bouton est pressé
                print('Bouton pressé!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
