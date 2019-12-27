import "package:flutter/material.dart";
import 'package:login_app/signin.dart';
import 'package:login_app/views/add_card_views.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      body: WholeView(),
    ),
  ));
}
