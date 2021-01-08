import 'package:flutter/material.dart';
import 'package:mookfood/models/category.dart';

class CateCard extends StatefulWidget {
  CateCard({Key key, this.categoryList}) : super(key: key);
  List<Category> categoryList;

  @override
  _CateCardState createState() => _CateCardState(categoryList);
}

class _CateCardState extends State<CateCard> {
  List<Category> categoryList;
  _CateCardState(this.categoryList);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 250,
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              print("Click" + index.toString());
            },
            child: Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.network(
                      'https://static.wixstatic.com/media/2cd43b_de870a7313e1454da9573de5162b4bd5~mv2_d_1750_1209_s_2.png',
                      // height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: Text(
                        categoryList[index].categoryName,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
