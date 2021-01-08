import 'package:flutter/material.dart';
import 'package:mookfood/components/title_with_underline.dart';

import '../constant.dart';

class TitleWithMorebtn extends StatelessWidget {
  const TitleWithMorebtn({
    Key key, this.title, this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Row(
          children: <Widget>[
            TitleWithUnderline(
              title: title,
            ),
            Spacer(),
            FlatButton(
              onPressed: press,
              child: Text(
                'More',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
