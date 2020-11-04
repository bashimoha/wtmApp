import 'dart:async';
import 'package:wtm/models/category.dart';
import 'package:wtm/models/event.dart';
import 'package:wtm/resources/api_provider.dart';

class Repository {
  final eventApiProvider = EventApiProvider();
  Future<List<Event>> fetchEvent() => eventApiProvider.fetchEvent();
  Future<List<Category>> fetchCategory() => eventApiProvider.fetchCategory();
}

var repo = Repository();
