import 'package:flutter/material.dart';
import 'package:pizza_in/model/food.dart';
import 'clipper.dart';
import 'gredients.dart';
import 'customIcon.dart';

class MHeader extends StatelessWidget {
  
  final Food food;
  MHeader({this.food});


  Widget _appBar(Food food, BuildContext context) {
    
    return new Align(
      heightFactor: 0.35,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: new IconButton(
                icon: new Icon(
                  Icons.arrow_back,
                  color: Colors.black87,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                splashColor: Colors.black,
              )),
          new Expanded(
            child: new Container(),
          ),
          new Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: new Icon(
              Icons.shopping_cart,
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }

  Widget content(Food food, BuildContext context) {
    
    return new Container(
      margin: new EdgeInsets.only(top: 30.0),
      child: new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Image(
          width: 140.0,
          height: 140.0,
          image: new AssetImage(food.image),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Container(
                width: 70.0,
                height: 30.0,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(30.0)),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0))
                    ]),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    new Text("4.8")
                  ],
                ),
              ),
              new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(food.name,
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal)),
                  ]),
              new Container(
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                    gradient: btnGradient,
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.black12,
                          offset: new Offset(0.0, 10.0))
                    ]),
                child: new Icon(
                  Icons.share,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ]),
    );

  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 280.0,
      child: new Stack(
        children: <Widget>[
          new ClipPath(
            clipper: new ArcClipper(),
            child: new Container(
              height: double.infinity,
              decoration: new BoxDecoration(gradient: bgGradient),
            ),
          ),
          new Align(
            alignment: FractionalOffset.center,
            heightFactor: 3.5,
            child: content(food, context),
          ),
          _appBar(food, context)
        ],
      ),
    );
  }
}
