import 'package:flutter/material.dart';
import 'package:web_app/nav_buttons.dart';
import 'package:web_app/nav_head.dart';
import 'package:web_app/proflie_info.dart';
import 'package:web_app/responsive_widget.dart';
import 'package:web_app/social_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  List<Widget> navButtons() => [
        NavButton(
          text: "about",
          onPressed: () {},
        ),
        NavButton(
          text: "work",
          onPressed: () {},
        ),
        NavButton(
          text: "contact",
          onPressed: () {},
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
              )
            : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: navButtons(),
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(navButtons: navButtons()),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  ProfileInfo(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
