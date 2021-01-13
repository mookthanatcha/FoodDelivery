import 'package:flutter/cupertino.dart';
import 'package:mookfood/models/order.dart';

class OrderProvider extends ChangeNotifier {
  List<Order> orderList = [
    Order(
      id: "1",
      categoryId: "1",
      menuName: "Chicken Fries",
      price: "100THB",
      favourite: false,
      quantity: 0,
      image: "assets/images/food10.jpg",
    ),
    Order(
      id: "2",
      categoryId: "1",
      menuName: "French Fries",
      price: "95THB",
      favourite: false,
      quantity: 0,
      image: "assets/images/food10.jpg",
    ),
    Order(
      id: "3",
      categoryId: "2",
      menuName: "Chocolate Cake",
      price: "120THB",
      favourite: false,
      quantity: 0,
      image: "assets/images/food10.jpg",
    ),
    Order(
      id: "4",
      categoryId: "2",
      menuName: "Lava Cake",
      price: "100THB",
      favourite: false,
      quantity: 0,
      image: "assets/images/food10.jpg",
    ),
  ];

  List<Order> getOrderList() => orderList;

  // int getQuantity() => orderList.

  setFavourite(bool value, int index) {
    print(value);
    orderList[index].favourite = value;
    notifyListeners();
  }

  var count = 0;

  setQuantity(int index, int number) {
    if (number == 1) {
      orderList[index].quantity = orderList[index].quantity + 1;
    } else {
      orderList[index].quantity = orderList[index].quantity - 1;
    }
    notifyListeners();
    print(orderList[index].quantity);
  }

  int getQuantity(int index) => orderList[index].quantity;

  bool getFavourite(int index) => orderList[index].favourite;
}
