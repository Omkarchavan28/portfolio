import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/copyRightText.dart';
import 'package:portfolio_app/presentation/social_icons_icons.dart';
import 'package:portfolio_app/presentation/hover_effect.dart';
import 'package:portfolio_app/widgets/responsive_widget.dart';

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      RaisedButton.icon(
        icon: new Icon(SocialIcons.github_circled_alt2),
        label: Text("Github"),
        onPressed: () {
          html.window.open("https://github.com/meomkarchavan", "GitHub");
        },
        color: Colors.black,
      ).showCursorOnHover,
      RaisedButton.icon(
        icon: new Icon(SocialIcons.twitter),
        label: Text("Twitter"),
        onPressed: () {
          html.window.open("https://twitter.com/meomkarchavan", "Twitter");
        },
        color: Colors.black,
      ).showCursorOnHover,
      RaisedButton.icon(
        icon: new Icon(SocialIcons.instagram),
        label: Text("Instagram"),
        onPressed: () {
          html.window.open("https://instagram.com/meomkarchavan", "Instagram");
        },
        color: Colors.black,
      ).showCursorOnHover,
    ];
  }

 

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          copyRightText(),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ...socialMediaWidgets(),
          copyRightText(),
        ],
      ),
    );
  }
}
