import "package:flutter/material.dart";
import "package:carousel_pro/carousel_pro.dart";

class Views extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}

final buttonWidth = 300.0;
final buttonHeight = 50.0;

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
              child: RichText(
                text: new TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    new TextSpan(text: "Sign up by "),
                    new TextSpan(text: 'Facebook',
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              )
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
        child: Container(
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage("images/google.png"),
                height: 25.0,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: RichText(
                    text: new TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        new TextSpan(text: "Sign up by "),
                        new TextSpan(text: 'Google',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
        onPressed: () {},
        elevation: 6.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: Colors.white,
      ),
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
      padding: EdgeInsets.all(20.0),
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
            color: Colors.black54,
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
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
    // TODO: implement buildR
    return new Center(
        child: new SizedBox(
            child: Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage("images/imageasset.png"),
                AssetImage("images/imageasset.png"),
                AssetImage("images/imageasset.png"),
              ],
              showIndicator: true,
              indicatorBgPadding: 10.0,
              overlayShadowColors: Colors.grey,
              dotColor: Colors.orangeAccent,
              dotBgColor: Colors.transparent,
              moveIndicatorFromBottom: 0.0,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 7000),
            )));
  }
}

var text = new RichText(
  text: new TextSpan(
    style: new TextStyle(
      fontSize: 14.0,
      color: Colors.black,
    ),
    children: <TextSpan>[
      new TextSpan(text: 'Sign up by'),
      new TextSpan(text: 'facevook'),
      new TextSpan(text:  'Google', style: new TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
);
