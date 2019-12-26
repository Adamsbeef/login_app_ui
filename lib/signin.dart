import 'package:flutter/material.dart';
import "package:carousel_pro/carousel_pro.dart";

class SignInPage extends StatelessWidget {
//  static const fButtonWidth = 300.0;
//  static const fButtonHeight = 50.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: ImageCarousel(),
              margin: EdgeInsets.only(top: 40.0),
            ),
            Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          SigInButtonGoogle(),
                          SigInButtonFacebook(),
                          TextView(),
                        ],
                      ),
                      margin: EdgeInsets.all(40.0),
                      decoration: new BoxDecoration(),
                    )
                  ],
                ),
                margin: EdgeInsets.only(top: 20.0),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0)),
                    color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final buttonWidth = 300.0;
final buttonHeight = 50.0;

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement
    AssetImage assetImage = new AssetImage(
        "images/imageasset.png"); //get the asset you need into this object
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 200.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 30.0),
    );
  }
}

class SigInButtonFacebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      margin: EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        child: Row(
          children: <Widget>[
            Image(
              image: AssetImage("images/facebooklogo.png"),
              height: 35.0,
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                returnText("Sign up by Facebook"),
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
        onPressed: () {},
        elevation: 6.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: Colors.white,
      ),
    );
  }
}

class SigInButtonGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      child: RaisedButton(
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage("images/google.png"),
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  returnText("Sign up by Google"),
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          onPressed: () {},
          elevation: 6.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          color: Colors.white),
    );
  }
}

class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Not Those ? Register Now",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          )),
      padding: EdgeInsets.all(30.0),
    );
  }
}

class TextViewSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Register on network first",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
      padding: EdgeInsets.all(10.0),
    );
  }
}

class TextViewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Enjoy the feautures for Online payment and Transfer Money",
        style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.w300,
            wordSpacing: 2.0),
        textAlign: TextAlign.center,
      ),
      padding: EdgeInsets.all(10.0),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    // TODO: implement buildR
    return new Center(
      child: new SizedBox(
          height: 350.0,
          width: 350.0,
          child: new Stack(
            children: <Widget>[
              Carousel(
                boxFit: BoxFit.cover,
                images: [
                  AssetImage("images/google.png"),
                  AssetImage("images/facebooklogo.png"),
                  AssetImage("images/imageasset.png"),
                ],
                showIndicator: true,
                indicatorBgPadding: 10.0,
                dotColor: Colors.orangeAccent,
                dotBgColor: Colors.transparent,
                moveIndicatorFromBottom: 30.0,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 2000),
              ),
              new Container(
                child: TextViewSecond(),
                alignment: Alignment.bottomCenter,
              ),
              TextViewDetails(),
            ],
          )),
    );
  }
}

String returnText(String text) => text;
