import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/social_icons_icons.dart';
import 'package:portfolio_app/presentation/hover_effect.dart';
import 'dart:html' as html;

Widget copyRightText() => Text(
      "Made using Flutter Web\nOmkar Chavan ©️2019",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey,
      ),
    );
Widget appBar(
  String title,
  bool alignEnd,
) =>
    Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:
          alignEnd ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Agne",
              color: Colors.amber),
        ),
      ],
    );
List<Widget> socialMediaWidgets() {
  return [
    socialButton(
        icon: SocialIcons.github_circled_alt2,
        lable: 'Github',
        url: 'https://github.com/meomkarchavan',
        urlName: 'GitHub'),
    socialButton(
        icon: SocialIcons.twitter,
        lable: 'Twiter',
        url: 'https://twitter.com/meomkarchavan',
        urlName: 'Twitter'),
    socialButton(
        icon: SocialIcons.instagram_1,
        lable: 'Instagram',
        url: 'https://instagram.com/meomkarchavan',
        urlName: 'Instagram'),
  ];
}

Widget socialButton(
        {IconData icon, String url, String urlName, String lable}) =>
    Container(
      height: 40,
      width: 130,
      margin: EdgeInsets.all(8),
      child: OutlineButton.icon(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        icon: Icon(
          icon,
          color: Colors.amber,
        ),
        label: Text(
          lable,
          style: TextStyle(color: Colors.amber),
        ),
        onPressed: () {
          html.window.open(url, urlName);
        },
        highlightColor: Colors.black,
        hoverColor: Colors.white10,
        borderSide: BorderSide(
          width: 2.0,
          color: Colors.amber,
        ),
        shape: StadiumBorder(),
      ).showCursorOnHover,
    );

const textInputDecoration = InputDecoration(
  fillColor: Colors.black,
  filled: true,
  alignLabelWithHint: true,
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(color: Colors.red, width: 2.0),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(color: Colors.red, width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(color: Colors.amber, width: 2.0),
  ),
);
