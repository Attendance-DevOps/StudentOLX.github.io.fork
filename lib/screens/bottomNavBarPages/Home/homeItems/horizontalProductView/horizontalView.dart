import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'links.dart';

/// Carousel View will contain only horizontal images with sliding property
class CarouselView extends StatelessWidget {
  const CarouselView({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
        items: [
          CarouselItem(links[0]),
          CarouselItem(links[1]),
          CarouselItem(links[2]),
        ],
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ));
  }

  /// CarouselItem is the Item style of carousel slider
  Widget CarouselItem(String link) {
    return Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.yellow,
            image:
                DecorationImage(image: NetworkImage(link), fit: BoxFit.cover)));
  }
}
