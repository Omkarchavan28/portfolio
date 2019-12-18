import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:web_app/presentation/social_icons_icons.dart';
import 'package:web_app/responsive_widget.dart';

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      Container(
        height: 400,
        child: RaisedButton.icon(
          icon: new Icon(SocialIcons.github_circled_alt2),
          label: Text("Github"),
          onPressed: () {
            html.window.open("https://github.com/Omkarchavan28", "GitHub");
          },
          color: Colors.black,
        ),
      ),
      RaisedButton.icon(
        icon: new Icon(SocialIcons.twitter),
        label: Text("Twitter"),
        onPressed: () {
          html.window.open("https://twitter.com/meomkarcavan", "Twitter");
        },
        color: Colors.black,
      ),
      RaisedButton.icon(
        icon: new Icon(SocialIcons.instagram),
        label: Text("Instagram"),
        onPressed: () {
          html.window.open("https://facebook.com/meomkarchavan", "Fb");
        },
        color: Colors.black,
      ),
    ];
  }

  Widget copyRightText() => Text(
        "Omkar Chavan ©️2019",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      );

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ...socialMediaWidgets(),
          copyRightText(),
        ],
      ),
    );
  }
}
