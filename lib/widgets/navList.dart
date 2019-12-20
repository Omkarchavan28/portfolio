import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/nav_buttons.dart';
import 'package:portfolio_app/presentation/hover_effect.dart';

List<Widget> navButtons(BuildContext context) => [
      NavButton(
          text: "Home",
          onPressed: () {
            Navigator.pop(context);
            return Navigator.pushNamed(context, '/');
          }).showCursorOnHover,
      NavButton(
          text: "About",
          onPressed: () {
            Navigator.pop(context);

            return Navigator.pushNamed(context, '/aboutPage');
          }).showCursorOnHover,
      NavButton(
        text: "Projects",
        onPressed: () {
          Navigator.pop(context);

          return Navigator.pushNamed(context, '/projectPage');
        },
      ).showCursorOnHover,
      NavButton(
        text: "Contact",
        onPressed: () {
          Navigator.pop(context);

          return Navigator.pushNamed(context, '/contactPage');
        },
      ).showCursorOnHover,
    ];
