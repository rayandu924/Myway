import 'package:flutter/material.dart';
import 'package:myway/src/presentation/widgets/reorderableListView.dart';
import 'package:myway/src/presentation/widgets/tile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: reorderableListView(
        children: [
          tile(
            key: ValueKey('tile-3'),
          ),
          tile(
            key: ValueKey('tile-4'),
          ),
          tile(
            key: ValueKey('tile-5'),
          ),
        ],
      ),
    );
  }
}
