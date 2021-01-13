import 'package:flutter/material.dart';
import 'package:mookfood/models/foodShop.dart';
import 'package:provider/provider.dart';

class FoodShopProvider extends ChangeNotifier {
  List<FoodShop> foodShop = [
    FoodShop(
      shopName: "Dessert",
      image: "assets/images/food10.jpg",
    ),
    FoodShop(
      shopName: "Healthy Food",
      image: "assets/images/food9.jpg",
    ),
    FoodShop(
      shopName: "Cake",
      image: "assets/images/food7.jpg",
    ),
  ];

  List<FoodShop> getFoodShop() => foodShop;
}
