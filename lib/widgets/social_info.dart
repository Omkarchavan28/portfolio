import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/constants.dart';
import 'package:portfolio_app/widgets/responsive_widget.dart';

class SocialInfo extends StatelessWidget {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Find Me On :',
                style: TextStyle(
                    fontSize: 25.0, fontFamily: "Agne", color: Colors.white),
              )
            ],
          ),
          SizedBox(height: 20),
          ...socialMediaWidgets(),
        ],
      ),
    );
  }
}
