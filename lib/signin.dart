import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:carousel_pro/carousel_pro.dart";
import 'package:login_app/views/views.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                ImageCarousel(),
                Container(
                  child: Column(
                    children: <Widget>[TextViewSecond(), TextViewDetails()],
                  ),
                  margin: EdgeInsets.only(top: 360.0),
                  alignment: Alignment.center,
                )
              ],
            ),
            height: 485.2,
          ),
          Container(
              child: Column(
                children: <Widget>[
                  SigInButtonGoogle(),
                  SigInButtonFacebook(),
                  TextView(),
                ],
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.only(top:20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0)),
                  color: Colors.blue))
        ],
      ),
    );
  }
}
