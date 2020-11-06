import 'package:flutter/material.dart';
import '../models/category.dart';
import 'package:wtm/widgets/event_tile.dart';

class SpecificCategory extends StatelessWidget {
  SpecificCategory({Key key, this.category}) : super(key: key);
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: categoryListView(data: category),
      // backgroundColor: Colors.red,
    );
  }
}

ListView categoryListView({Category data}) {
  return ListView.builder(
      itemCount: data.events.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: eventTile(data.events[index]));
      });
}
