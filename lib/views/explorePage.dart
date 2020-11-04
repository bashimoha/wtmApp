import 'package:flutter/material.dart';
import '../resources/repository.dart';
import 'package:wtm/widgets/category_carousel.dart';
import 'package:wtm/models/category.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Event by Category')),
        body: FutureBuilder<List<Category>>(
            future: repo.fetchCategory(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Category> data = snapshot.data;
                return categoryListView(data: data);
              } else if (snapshot.hasError) {
                // return Text("${snapshot.error}");
                return CircularProgressIndicator();
              }
              return CircularProgressIndicator();
            }));
  }
}
