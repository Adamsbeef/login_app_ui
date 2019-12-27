import 'package:dotted_border/dotted_border.dart';
import "package:flutter/material.dart";
import 'package:login_app/views/add_card_whole_view.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddCardFrame();
  }
}

class _AddCardFrame extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var grey = Colors.grey;
    return Scaffold(
//      appBar: AppBar(title: Text("city sucks rn")),
      body: AddCardViews(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wb_sunny,
              color: grey,
            ),
            title: Text("cards"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.web,
              color: grey,
            ),
            title: Text("cards"),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                color: grey,
              ),
              title: Text("cards"))
        ],
      ),
    );
  }
}
