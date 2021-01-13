import 'package:flutter/material.dart';

import '../constant.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({
    Key key,
    this.user,
  }) : super(key: key);

  final String user;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: kPrimaryColor,
            child: DrawerHeader(
              child: DrawerHeader(
                  child: Column(
                children: <Widget>[
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    user,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  )
                ],
              )),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.shop_outlined),
                  onTap: () {
                    Navigator.pushNamed(context, '/shopPage');
                  },
                  title: Text('ร้านอาหารทั้งหมด'),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  onLongPress: () {},
                  title: Text('data'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
