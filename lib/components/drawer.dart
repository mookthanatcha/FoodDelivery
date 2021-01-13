import 'package:flutter/material.dart';
import 'package:mookfood/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../constant.dart';

class ShowDrawer extends StatefulWidget {
  ShowDrawer({Key key}) : super(key: key);

  @override
  _ShowDrawerState createState() => _ShowDrawerState();
}



class _ShowDrawerState extends State<ShowDrawer> {
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

  Widget showHead() {
    // var userProvider = Provider.of<UserProvider>(context, listen: false);
    return Consumer<UserProvider>(
      builder: (BuildContext context, userProvider, _) {
        return DrawerHeader(
          decoration: BoxDecoration(
            color: kBackgroundColor,
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    bottom: kDefaultPadding, top: kDefaultPadding),
                width: 100.0,
                height: 50.0,
                child: Image.asset("assets/icons/hamburger.png"),
              ),
              Container(
                // child: Text(userProvider.getNickNameUser()),
              ),
            ],
          ),
        );
      },
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
              Navigator.pushReplacementNamed(context, "/signInPage");
            },
          ),
          ListTile(
            leading: Icon(Icons.data_usage),
            title: Text("Sign up"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/signUpPage");
            },
          ),
          ListTile(
            leading: Icon(Icons.content_copy),
            title: Text('Content'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/contentPage");
            },
            trailing: Icon(Icons.home),
          ),
          ListTile(
            leading: Icon(Icons.content_copy),
            title: Text('Test'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/testPage");
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Add new task'),
            onTap: (){
              Navigator.pushNamed(context, "/addTaskPage");
            },
          
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: showDrawer(context),
    );
  }
}
