import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.amber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
