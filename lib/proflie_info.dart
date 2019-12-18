import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_app/responsive_widget.dart';

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.amber,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("profile.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TyperAnimatedTextKit(
          isRepeatingAnimation: false,
          duration: Duration(milliseconds: 1000),
          onTap: () {
            print("Tap Event");
          },
          text: [
            "Hi there! My name is",
          ],
          textStyle: TextStyle(
              fontSize: 25.0, fontFamily: "Agne", color: Colors.amber),
          textAlign: TextAlign.start,
          alignment: AlignmentDirectional.topStart // or Alignment.topLeft
          ),
      SizedBox(
        width: 250.0,
        child: TypewriterAnimatedTextKit(
            isRepeatingAnimation: false,
            duration: Duration(seconds: 8),
            onTap: () {
              print("Tap Event");
            },
            text: [
              "Omkar\nChavan",
            ],
            textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional.topStart // or Alignment.topLeft
            ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "A Google Developer Expert for Flutter, Dart & Web Tech.\n"
        "I am also a youtuber having MTechViral youtube channel\n"
        "where I make tutorials for technology.",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          OutlineButton(
            hoverColor: Colors.amber,
            borderSide: BorderSide(
              width: 2.0,
              color: Colors.amber,
            ),
            shape: StadiumBorder(),
            child: Text("Resume"),
            color: Colors.amber,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          OutlineButton(
            hoverColor: Colors.amber,
            borderSide: BorderSide(
              width: 2.0,
              color: Colors.amber,
            ),
            shape: StadiumBorder(),
            child: Text("Say Hi!"),
            color: Colors.amber,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          )
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}
