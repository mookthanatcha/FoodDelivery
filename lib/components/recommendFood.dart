import 'package:flutter/material.dart';
import 'package:mookfood/providers/foodShop_provider.dart';
import 'package:provider/provider.dart';

import '../constant.dart';

class RecommendFood extends StatelessWidget {
  const RecommendFood({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Consumer<FoodShopProvider>(
      builder: (BuildContext context, foodShopProvider, _) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: foodShopProvider.getFoodShop().length,
          itemBuilder: (BuildContext context, int index) {
            return reccommendCard(foodShopProvider, index, context);
          },
        );
      },
    );
  }

  Container reccommendCard(
      FoodShopProvider foodShopProvider, int index, BuildContext context) {
    return Container(
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
                foodShopProvider.foodShop[index].image,
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
                          text: foodShopProvider.foodShop[index].shopName,
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
    );
  }
}
