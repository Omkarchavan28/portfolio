import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/constants.dart';
import 'package:portfolio_app/widgets/contactForm.dart';
import 'package:portfolio_app/widgets/navList.dart';
import 'package:portfolio_app/widgets/nav_head.dart';
import 'package:portfolio_app/widgets/responsive_widget.dart';
import 'package:portfolio_app/widgets/social_info.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: appBar('Contact Me', false))
          : null,
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: navButtons(context),
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
          child: ResponsiveWidget(
            largeScreen: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                NavHeader(navButtons: navButtons(context)),
                if (!ResponsiveWidget.isSmallScreen(context))
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                // Container(child: Center(child: Text('Contact Page'))),
                Text(
                  'Contact Form',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                MyCustomForm(),

                SizedBox(height: 12.0),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: socialMediaWidgets(),
                // ),
                SocialInfo(),

                SizedBox(height: 10),
                if (ResponsiveWidget.isSmallScreen(context))
                  copyRightText(),
                // copyRightText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
