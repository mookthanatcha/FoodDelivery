import 'package:flutter/material.dart';

import '../constant.dart';

class TitleWithUnderline extends StatelessWidget {
  const TitleWithUnderline({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 4),
          child: Text(
            title,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.only(right: kDefaultPadding / 4),
            height: 7,
            color: kPrimaryColor.withOpacity(0.2),
          ),
        ),
      ],
    );
  }
}
