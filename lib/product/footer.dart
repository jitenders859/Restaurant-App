import 'package:flutter/material.dart';
import 'package:pizza_in/model/food.dart';
import 'gredients.dart';
import 'pages/specification.dart';
import 'pages/productDesc.dart';
import 'pages/userReviews.dart';



var divider = new Divider();


class Mfooter extends StatefulWidget {
  final Food food;
  Mfooter({this.food});

  @override
  _MfooterState createState() => new _MfooterState();
}

class _MfooterState extends State<Mfooter> with SingleTickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  static TabController _controller;
  
  
  @override
  void initState() {
    super.initState();

    _tabs = [
      new Tab(
        child: new Text(
          "Product Description",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      new Tab(
        child: new Text(
          "specification",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      new Tab(
        child: new Text(
          "user reviews",
          style: new TextStyle(color: Colors.black),
        ),
      ),
    ];
    _pages = [new ProductDesc(food: widget.food), new Specification(), new UserReview()];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new TabBar(
          isScrollable: true,
          controller: _controller,
          tabs: _tabs,
          indicatorColor: Colors.white,
        ),
        new Divider(
          height: 1.0,
        ),
        new SizedBox.fromSize(
          size: const Size.fromHeight(220.0),
          child: new TabBarView(
            controller: _controller,
            children: _pages,
          ),
        ),
      ],
    );
  }
}
