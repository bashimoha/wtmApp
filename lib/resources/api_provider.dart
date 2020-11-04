import 'dart:async';
import 'dart:convert';
import 'package:wtm/models/category.dart';
import 'package:wtm/models/event.dart';
import 'package:http/http.dart' show Client;

class EventApiProvider {
  Client client = Client();
  Future<List<Event>> fetchEvent() async {
    final resp = await client.get('http://10.0.2.2:8000/api/v1/event/');
    if (resp.statusCode == 200) {
      List data = json.decode(resp.body);
      return data.map((event) => new Event.fromJson(event)).toList();
    } else {
      throw Exception('Failed to load the data');
    }
  }

  Future<List<Category>> fetchCategory() async {
    final resp = await client.get('http://10.0.2.2:8000/api/v1/category/');
    if (resp.statusCode == 200) {
      List data = json.decode(resp.body);
      var res = data.map((e) => new Category.fromJson(e)).toList();
      return res;
    } else {
      throw Exception('failed to lead category');
    }
  }
}
