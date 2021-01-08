import 'package:flutter/cupertino.dart';
import 'package:mookfood/models/order.dart';
import 'package:provider/provider.dart';

class OrderProvider extends ChangeNotifier {
  List<Order> orderList = [
    Order(
        menuName: "Chicken Fries",
        price: "100THB",
        favourite: false,
        quantity: 0),
    Order(
        menuName: "French Fries",
        price: "95THB",
        favourite: false,
        quantity: 0),
    Order(
      menuName: "Hotdog",
      price: "120THB",
      favourite: false,
      quantity: 0,
    ),
    Order(
      menuName: "Hamburger",
      price: "100THB",
      favourite: false,
      quantity: 0,
    ),
  ];

  List<Order> getOrderList() => orderList;

  setFavourite(bool value, int index) {
    print(value);
    orderList[index].favourite = value;
    notifyListeners();
  }

  var count = 0;
  setQuantity(int index, int number) {
    if (number == 1) {
      count = count + 1;
    } else {
      count = count - 1;
    }
    print("count");
    print(count);
    orderList[index].quantity = count;
    notifyListeners();
    print("index");
    print(index);
    print("all");
    print(orderList[index].quantity);
  }

  bool getFavourite(int index) => orderList[index].favourite;
}
