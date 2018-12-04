import 'package:flutter/material.dart';
import 'package:pizza_in/model/food.dart';

class ProductDesc extends StatelessWidget {
  ProductDesc({this.food});
  Food food;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.all(14.0),
        child: new Text(
          food.description,
          style: new TextStyle(
              fontFamily: "Dosis",
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
