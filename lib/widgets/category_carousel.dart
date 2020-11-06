import 'package:flutter/material.dart';
import '../models/category.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wtm/widgets/event_tile.dart';
import 'package:wtm/models/event.dart';
import 'package:wtm/views/categoryPage.dart';

ListView categoryListView({data}) {
  return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return CategoryCarousel(category: data[index]);
      });
}

class CategoryCarousel extends StatefulWidget {
  CategoryCarousel({Key key, this.category});
  Category category;
  @override
  _CategoryCarouselState createState() => _CategoryCarouselState();
}

class _CategoryCarouselState extends State<CategoryCarousel> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(widget.category.name),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: FlatButton(
                child: Text(
                  'See all',
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.green[600],
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SpecificCategory(category: widget.category)));
                },
              ),
            )
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 3),
        child: eventCarousel(events: widget.category.events),
      ),
    );
  }

  Widget eventCarousel({List<Event> events}) {
    return CarouselSlider(
      options: CarouselOptions(enableInfiniteScroll: true),
      items: events.map((item) => eventTile(item)).toList(),
    );
  }
}
