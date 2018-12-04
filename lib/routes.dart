import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:pizza_in/dashboard/main.dart';
import 'package:pizza_in/screens/details.dart';
import 'package:pizza_in/product/main.dart';
class Routes {
  static final Router _router = new Router();

  static void initRoutes() {
    _router.define("/detail/:id", handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return new DetailPage(params["id"]);
        }));
     _router.define("/product/:title/:id", handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return new ProductPageItem(title: params["title"], id: params["id"]);
        }));
    _router.define("/dashboard", handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return new MyDashboard();
        }));
  }

  static void navigateTo(context, String route) {
    _router.navigateTo(context, route);
  }

}