import 'package:flutter/material.dart';
import 'package:web_app/responsive_widget.dart';

class NavHeader extends StatelessWidget {
  final List<Widget> navButtons;

  const NavHeader({Key key, this.navButtons}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: navButtons,
            )
        ],
      ),
    );
  }
}
