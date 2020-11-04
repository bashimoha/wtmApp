// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wtm/views/explorePage.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData.dark(),
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.tealAccent[400],
              title: Center(
                child: Text(
                  'WTM',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                ),
              )),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              new Container(
                color: Colors.yellow,
              ),
              new CategoryPage(),
              new Container(
                color: Colors.lightGreen,
              ),
              new Container(
                color: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              Tab(
                icon: new Icon(
                  Icons.explore,
                  size: 30,
                ),
              ),
              Tab(
                icon: new Icon(
                  Icons.add_circle_outline,
                  size: 30,
                ),
              ),
              Tab(
                icon: new Icon(Icons.settings, size: 30),
              )
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
