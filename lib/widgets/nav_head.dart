import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/responsive_widget.dart';

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
          if (!ResponsiveWidget.isSmallScreen(context))
            Flexible(
              child: Text(
                "Omkar Chavan",

                style: TextStyle(
                    fontSize: 30.0, fontFamily: "Agne", color: Colors.amber),
                textAlign: TextAlign.start,
                // alignment: AlignmentDirectional.topStart // or Alignment.topLeft
              ),
            ),
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
