import 'package:flutter/material.dart';
import 'package:mookfood/models/foodShop.dart';
import 'package:provider/provider.dart';

class FoodShopProvider extends ChangeNotifier {
  List<FoodShop> foodShop = [
    FoodShop(
        shopName: "Italian Food",
        image:
            "https://juliasalbum.com/wp-content/uploads/2018/03/40844292552_c43b62df07_c.jpg"),
    FoodShop(
        shopName: "Japanese Food",
        image:
            "https://drscdn.500px.org/photo/137477247/q%3D80_m%3D1000/v2?sig=894c06a3c6071c0ebad0dac39c8c649cd9830910453b4826fd6abadf8683678c"),
  ];

  List<FoodShop> getFoodShop() => foodShop;
}
