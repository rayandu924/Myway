import 'package:flutter/material.dart';

class tile extends StatelessWidget {
  final Color backgroundColor;
  final double borderRadius;
  final double aspectRatio; // Added aspect ratio parameter

  const tile({
    Key? key,
    this.backgroundColor = Colors.blue,
    this.borderRadius = 16.0,
    this.aspectRatio = 4 / 3, // Default aspect ratio
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Use full width of the parent and maintain aspect ratio
        return AspectRatio(
          aspectRatio: aspectRatio,
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        );
      },
    );
  }
}
