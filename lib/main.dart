import 'package:flutter/material.dart';
import 'package:portfolio_app/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Omkar Chavan',
      theme: ThemeData(
        backgroundColor: Colors.black,
        primarySwatch: Colors.grey,
        accentColor: Colors.amber,
        brightness: Brightness.dark,
      ),
      home: SafeArea(child: HomePage()),
    );
  }
}
