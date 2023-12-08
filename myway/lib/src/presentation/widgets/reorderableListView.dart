import 'package:flutter/material.dart';

class reorderableListView extends StatefulWidget {
  final List<Widget> children;

  reorderableListView({Key? key, required this.children}) : super(key: key);

  @override
  _reorderableListViewState createState() => _reorderableListViewState();
}

class _reorderableListViewState extends State<reorderableListView> {
  late List<Widget> _children;

  @override
  void initState() {
    super.initState();
    _children = widget.children;
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Widget item = _children.removeAt(oldIndex);
      _children.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: _onReorder,
      children: List.generate(
        _children.length,
        (index) => ReorderableDragStartListener(
          key: ValueKey('reorderable-item-$index'),
          index: index,
          child: _children[index],
        ),
      ),
    );
  }
}