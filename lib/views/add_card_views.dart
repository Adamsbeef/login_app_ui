import 'package:dotted_border/dotted_border.dart';
import "package:flutter/material.dart";

class WholeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var white = Colors.white;
    return Container(
      margin: EdgeInsets.only(top:50.0,bottom: 10.0,left: 10.0,right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            child: ListTile(
              title: Text(
                "Select Your Card",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            height: 150.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Mellat",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: white)),
                  subtitle: Text(
                    "Mr Korehbandi",
                    style: TextStyle(color: white, fontWeight: FontWeight.w200),
                  ),
                  trailing: Icon(Icons.check_circle),
                ),
                Container(
//                  width: 70.0,
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    "**** 9879",
                    style: TextStyle(
                      color: Colors.white,
                    ),
//                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                  ),
                  alignment: Alignment.centerLeft,
                )
              ],
            ),
//          color: Colors.orange,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  // Where the linear gradient begins and ends
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    Colors.orange[900],
                    Colors.orangeAccent[700],
                    Colors.orangeAccent[400],
                    Colors.orangeAccent[400],
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            height: 150.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Refah",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: white)),
                  subtitle: Text(
                    "Mr Korehbandi",
                    style: TextStyle(color: white, fontWeight: FontWeight.w200),
                  ),
                  trailing: Icon(Icons.check_circle),
                ),
                Container(
//                  width: 70.0,
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    "**** 5510",
                    style: TextStyle(
                      color: Colors.white,
                    ),
//                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                  ),
                  alignment: Alignment.centerLeft,
                )
              ],
            ),
//          color: Colors.orange,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  // Where the linear gradient begins and ends
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    Colors.redAccent[400],
                    Colors.redAccent[400],
                    Colors.redAccent[200],
                    Colors.redAccent[200],
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            height: 150.0,
            alignment: Alignment.center,
            child: DottedBorder(
                color: Colors.black,
                padding: EdgeInsets.only(top: 20.0),
                strokeWidth: 1,
                borderType: BorderType.RRect,
                radius: Radius.circular(10.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.add_box,
                        color: Colors.grey,
                        size: 75.0,
                      ),
                      Text(
                        "Add another Card",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Row(children: <Widget>[
            Expanded(child: Icon(Icons.wb_sunny,size: 50,color: Colors.grey,)),
            Expanded(child: Icon(Icons.web,size: 50,color: Colors.grey,),),
            Expanded(child:  Icon(Icons.star,size: 50,color: Colors.grey,))
          ],)
        ],
      ),
    );
  }
}
