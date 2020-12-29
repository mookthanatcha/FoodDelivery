// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mookfood/constant.dart';
import 'package:mookfood/screens/signIn.dart';
import 'package:mookfood/screens/signup.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget showHead() {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: kBackgroundColor,
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin:
                EdgeInsets.only(bottom: kDefaultPadding, top: kDefaultPadding),
            width: 100.0,
            height: 50.0,
            // child: Icon(Icons.face),
            child: Image.asset("assets/icons/hamburger.png"),
          ),
          Container(
            child: Text("Guest ..."),
          ),
        ],
      ),
    );
  }

  Widget showList(context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.login),
            title: Text("Sign in"),
            onTap: () {
              Navigator.pop(context);
              MaterialPageRoute materialPageRoute = MaterialPageRoute(
                builder: (value) => SignIn(),
              );
              Navigator.push(context, materialPageRoute);
            },
          ),
          ListTile(
            leading: Icon(Icons.data_usage),
            title: Text("Sign up"),
            onTap: () {
              Navigator.pop(context);
              MaterialPageRoute materialPageRoute = MaterialPageRoute(
                builder: (value) => SignUp(),
              );
              Navigator.push(context, materialPageRoute);
            },
          ),
        ],
      ),
    );
  }

  Widget showDrawer(context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          showHead(),
          showList(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
      drawer: showDrawer(context),
    );
  }
}
