import 'package:flutter/material.dart';

import '../constant.dart';

class ShowTitle extends StatelessWidget {
  const ShowTitle(
    String s, {
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: kTextColor,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
    );
  }
}
