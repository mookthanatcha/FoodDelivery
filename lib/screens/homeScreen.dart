// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mookfood/components/category_card.dart';
import 'package:mookfood/components/drawer.dart';
import 'package:mookfood/components/showTitle.dart';
import 'package:mookfood/constant.dart';
import 'package:mookfood/models/order.dart';
import 'package:mookfood/models/user.dart';
import 'package:mookfood/providers/category_provider.dart';
import 'package:mookfood/providers/order_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Order> menuList = [
    Order(menuName: "Chicken fries", price: "100 THB", quantity: 10)
  ];

  //  var userProvider = Provider.of<UserProvider>(context, listen: false);
  //         userProvider.setNickNameUser(value);

  List<Order> menuList2 = [
    Order(menuName: "Sweet Chicken fries", price: "100 THB", quantity: 10)
  ];
  User userMook =
      User(fullName: "Thanatcha Sukapunpan", id: "1", nickName: "Non");
  // List<String> data = ["data1", "data2"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        children: [
          Container(
            child: ShowTitle(
              title: "Category",
            ),
          ),
          Container(
            child: categoryView(context),
          ),
          Container(
            child: menuListView(context),
          ),
        ],
      ),
      drawer: ShowDrawer(),
    );
  }

  CateCard categoryView(context) {
    var categoryProvider =
        Provider.of<CategoryProvider>(context, listen: false);
    return CateCard(
      categoryList: categoryProvider.categoryList,
    );
  }

  Container menuListView(context) {
    return Container(
      child: Consumer<OrderProvider>(
        builder: (BuildContext context, orderProvider, _) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: orderProvider.getOrderList().length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.fastfood),
                title: Text(orderProvider.orderList[index].menuName),
                subtitle: Text(orderProvider.orderList[index].price),
                trailing: orderProvider.getFavourite(index)
                    ? InkWell(
                        onTap: () {
                          orderProvider.setFavourite(
                              !orderProvider.getFavourite(index), index);
                        },
                        child: Icon(
                          Icons.favorite,
                          color: Colors.green,
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          orderProvider.setFavourite(
                              !orderProvider.getFavourite(index), index);
                        },
                        child: Icon(Icons.favorite),
                        
                      ),
              );
            },
          );
        },
      ),
    );
  }
}
