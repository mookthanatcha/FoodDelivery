import 'package:flutter/material.dart';

import '../constant.dart';

class ReccommendFood extends StatefulWidget {
  ReccommendFood({Key key}) : super(key: key);

  @override
  _ReccommendFoodState createState() => _ReccommendFoodState();
}

class _ReccommendFoodState extends State<ReccommendFood> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        child: Column(
          children: <Widget>[
            Tooltip(
              message: "Delicious Food",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  "assets/images/food10.jpg",
                  width: size.width * 0.4,
                  // height: size.height * 0.35,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/meNuPage");
              },
              child: Container(
                width: size.width * 0.395,
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.2),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "aaaaaaaaa",
                            style: Theme.of(context).textTheme.button,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
