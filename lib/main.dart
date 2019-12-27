import "package:flutter/material.dart";
import 'package:login_app/signin.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      body: SignInPage(),
    ),
  ));
}

//class SignInButtons extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Container(
//        alignment: Alignment.center,
//        child: Column(children: <Widget>[
//          )
//
//        ],),
//      ),
//    );
//  }
//
//}