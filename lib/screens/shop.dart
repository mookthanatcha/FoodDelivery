import 'package:flutter/material.dart';
import 'package:mookfood/components/shop_card.dart';

class Shop extends StatefulWidget {
  Shop({Key key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ShopCard(
                        size: size,
                        shopName: 'Partner',
                        press: () {
                          print('card1');
                        },
                        image: "assets/images/food1.jpg"),
                    ShopCard(
                        size: size,
                        shopName: 'Coupon',
                        press: () {
                          print('card2');
                        },
                        image: "assets/images/food2.webp"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ShopCard(
                      size: size,
                      shopName: 'Chicken Fries',
                      press: () {
                        print('card1');
                      },
                      image: "assets/images/food3.webp",
                    ),
                    ShopCard(
                      size: size,
                      shopName: 'Pizza',
                      press: () {
                        print('card2');
                      },
                      image: "assets/images/food4.jpg",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ShopCard(
                      size: size,
                      shopName: 'Korea Food',
                      press: () {
                        print('card1');
                      },
                      image: "assets/images/food5.jpg",
                    ),
                    ShopCard(
                      size: size,
                      shopName: 'Binsu',
                      press: () {
                        print('card2');
                      },
                      image: "assets/images/food6.jpg",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ShopCard(
                      size: size,
                      shopName: 'Cake',
                      press: () {
                        print('card1');
                      },
                      image: "assets/images/food7.jpg",
                    ),
                    ShopCard(
                      size: size,
                      shopName: 'Coffee',
                      press: () {
                        print('card2');
                      },
                      image: "assets/images/food8.jpg",
                    ),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ShopCard(
                      size: size,
                      shopName: 'Salad',
                      press: () {
                        print('card1');
                      },
                      image: "assets/images/food9.jpg",
                    ),
                    ShopCard(
                      size: size,
                      shopName: 'Dessert',
                      press: () {
                        print('card2');
                      },
                      image: "assets/images/food10.jpg",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
