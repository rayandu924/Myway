import 'package:flutter/material.dart';

class Grid<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(T) itemBuilder;
  final int crossAxisCount;

  const Grid({Key? key, required this.items, required this.itemBuilder, this.crossAxisCount = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return itemBuilder(items[index]);
      },
    );
  }
}
