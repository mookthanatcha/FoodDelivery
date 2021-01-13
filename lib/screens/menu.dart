import 'package:flutter/material.dart';
import 'package:mookfood/components/card_reccommendFood.dart';
import 'package:mookfood/models/order.dart';
import 'package:mookfood/providers/order_provider.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String categoryId = "2";
  List<Order> filterTempFood = [];

  void filterList() {
    filterTempFood = OrderProvider()
        .orderList
        .where((element) => element.categoryId == categoryId)
        .toList();
  }

  @override
  void initState() {
    filterList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      // drawer: ShowDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 15.0,
                  top: 15.0,
                  bottom: 15.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Reccommend Menu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      ReccommendFood(),
                      ReccommendFood(),
                      ReccommendFood(),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                  bottom: 15.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              MenuList(
                foodList: filterTempFood,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container picFood(Size size, pic) {
    return Container(
      child: Image.asset(
        pic,
        width: size.width * 0.4,
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({
    Key key,
    this.foodList,
  }) : super(key: key);

  final List<Order> foodList;

  @override
  Widget build(BuildContext context) {
    return Consumer<OrderProvider>(
      builder: (BuildContext context, orderProvider, _) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: foodList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // height: size.height* 0.2,
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/food10.jpg",
                    ),
                    title: Text(foodList[index].menuName),
                    subtitle: Text(foodList[index].price),
                    trailing: Icon(Icons.favorite),
                    onTap: () {
                      print(foodList);
                      Navigator.pushNamed(context, '/detailMeNuPage');
                    },
                  ),
                )
              ],
            );
          },
        );
      },
    );
  }
}
