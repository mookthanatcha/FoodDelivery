import 'package:flutter/material.dart';
import 'package:mookfood/components/drawer_content.dart';
import 'package:mookfood/components/header_and_searchbar.dart';
import 'package:mookfood/components/recommendFood.dart';
import 'package:mookfood/components/title_with_morebtn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Content extends StatefulWidget {
  Content({Key key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  String nameUser;

  @override
  void initState() {
    super.initState();
    findUser();
  }

  Future<Null> findUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(
      () {
        nameUser = preferences.getString('Name');
      },
    );
  }

  Future<Null> signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
    Navigator.pushReplacementNamed(context, "/signInPage");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              signOut();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Header_SearchBar(),
                TitleWithMorebtn(
                  title: 'Recommended',
                  press: () {},
                ),
                Container(
                  height: 600,
                  width: 350,
                  child: RecommendFood(size: size),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: DrawerContent(
        user: nameUser,
      ),
    );
  }
}
