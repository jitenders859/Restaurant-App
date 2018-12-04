import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() => runApp(MyDashboard());

class MyDashboard extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      title: 'Dashboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(),
    );
  }
}