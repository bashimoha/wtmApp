import 'package:flutter/material.dart';
import '../models/category.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wtm/widgets/event_tile.dart';
import 'package:wtm/models/event.dart';

ListView categoryListView({data}) {
  return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return categoryCarousel(category: data[index]);
      });
}

ListTile categoryCarousel({Category category}) {
  return ListTile(
    title: Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(category.name),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'see all',
              style: TextStyle(color: Colors.blue[300]),
            ),
          )
        ],
      ),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(left: 3),
      child: eventCarousel(list: category.events),
    ),
  );
}

Widget eventCarousel({List<Event> list}) {
  return CarouselSlider(
    options: CarouselOptions(enableInfiniteScroll: true),
    items: list.map((item) => eventTile(item)).toList(),
  );
}
