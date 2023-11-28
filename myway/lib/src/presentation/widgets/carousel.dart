import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(T) itemBuilder;

  const Carousel({Key? key, required this.items, required this.itemBuilder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: items.map((item) => itemBuilder(item)).toList(),
    );
  }
}
