import 'package:flutter/material.dart';

import '../constant.dart';

class Header_SearchBar extends StatelessWidget {
  const Header_SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: kDefaultPadding * 2.5,
      ),
      height: 250.0,
      // color: Colors.green,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: kPrimaryColor,
            ),
            height: 250.0,
            child: Row(
              children: <Widget>[
                Text(
                  "Hello Kaimook",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 20.0,
                  ),
                ),
                Spacer(),
                Image.asset(
                  'assets/icons/hamburger.png',
                  width: 70.0,
                  height: 70.0,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(
                      0,
                      10,
                    ),
                    blurRadius: 50.0,
                    color: kPrimaryColor.withOpacity(0.5),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: kPrimaryColor,
                    ),
                    tooltip: 'Search',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
