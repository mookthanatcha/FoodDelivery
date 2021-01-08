import 'package:flutter/material.dart';
import 'package:mookfood/components/drawer.dart';
import 'package:mookfood/components/header_and_searchbar.dart';
import 'package:mookfood/components/recommendFood.dart';
import 'package:mookfood/components/title_with_morebtn.dart';

class Content extends StatefulWidget {
  Content({Key key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
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
                Container(height: 600,width: 350,child: RecommendFood(size: size)),
              ],
            ),
          ],
        ),
      ),
      drawer: ShowDrawer(),
    );
  }
}
