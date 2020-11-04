import 'package:flutter/material.dart';
import '../models/event.dart';
import 'package:intl/intl.dart';

Widget eventTile(Event event) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
            width: 300,
            height: 150,
            image: NetworkImage(event.eventImg),
            fit: BoxFit.fill),
      ),
      Text(
        DateFormat.yMMMEd().format(event.eventDate),
        style: TextStyle(color: Colors.amber),
      ),
      Padding(
        padding: EdgeInsets.all(2),
      ),
      Text(
        event.title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.4,
        ),
        overflow: TextOverflow.fade,
      ),
      Padding(
        padding: EdgeInsets.all(2),
      ),
      Text(
        event.username.username,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
      )
    ],
  );
}
