import 'package:flutter/material.dart';
import '../models/category.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wtm/widgets/event_tile.dart';
import 'package:wtm/models/event.dart';

ListView categoryListView({data}) {
  return ListView.builder(
      padding: EdgeInsets.all(2),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return categoryCarousel(category: data[index]);
      });
}

ListTile categoryCarousel({Category category}) {
  return ListTile(
    // title: Text(category.name),
    title: Text(category.name),
    subtitle: eventCarousel(list: category.events),
  );
}

Widget eventCarousel({List<Event> list}) {
  return Container(
      child: CarouselSlider(
    options: CarouselOptions(),
    items: list.map((item) => eventTile(item)).toList(),
  ));
}
