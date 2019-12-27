import "package:flutter/material.dart";
import 'package:login_app/add_card.dart';
import 'package:login_app/signin.dart';

void main() {
  runApp(SignInPage());
}

class AddCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}