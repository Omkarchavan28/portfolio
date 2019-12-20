import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/about.dart';
import 'package:portfolio_app/pages/contactPage.dart';
import 'package:portfolio_app/pages/home.dart';
import 'package:portfolio_app/pages/projectPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Omkar Chavan',
      theme: ThemeData(
        backgroundColor: Colors.black,
        primarySwatch: Colors.grey,
        accentColor: Colors.amber,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the Home widget.
        '/': (context) => SafeArea(child: HomePage()),
        // When navigating to the "/aboutPage" route, build the aboutPage Screen widget.
        '/aboutPage': (context) => SafeArea(child: AboutPage()),
        '/projectPage': (context) => SafeArea(child: ProjectPage()),
        '/contactPage': (context) => SafeArea(child: ContactPage()),
      },
    );
  }
}
