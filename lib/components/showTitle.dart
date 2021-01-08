import 'package:flutter/material.dart';
import 'package:mookfood/constant.dart';

class ShowTitle extends StatelessWidget {
  const ShowTitle({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
    );
  }
}
