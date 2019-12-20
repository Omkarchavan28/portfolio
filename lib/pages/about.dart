import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/navList.dart';
import 'package:portfolio_app/widgets/nav_head.dart';
import 'package:portfolio_app/widgets/responsive_widget.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: navButtons(context),
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
                NavHeader(navButtons: navButtons(context)),
                if (!ResponsiveWidget.isSmallScreen(context))
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Center(child: Text('About Page')),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
