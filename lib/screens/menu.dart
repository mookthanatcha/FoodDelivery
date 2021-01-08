import 'package:flutter/material.dart';
import 'package:mookfood/providers/order_provider.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      // drawer: ShowDrawer(),
      body: SafeArea(
        child: Consumer<OrderProvider>(
          builder: (BuildContext context, orderProvider, _) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: orderProvider.getOrderList().length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        InkWell(
                          child: picFood(size),
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, "/detailMeNuPage");
                          },
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // InkWell(
                              //   child: Icon(Icons.remove_circle_outline),
                              //   onTap: () {
                              //     orderProvider.setQuantity(index, -1);
                              //   },
                              // ),
                              SizedBox(
                                width: 30.0,
                              ),
                              Text(orderProvider.orderList[index].menuName),
                              SizedBox(
                                width: 30.0,
                              ),
                              // InkWell(
                              //   child: Icon(Icons.add_circle_outline),
                              //   onTap: () {
                              //     orderProvider.setQuantity(index, 1);
                              //   },
                              // ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 30.0,
                        // ),
                        // Container(
                        //   child: Row(
                        //     children: <Widget>[
                        //       Text(
                        //         orderProvider.orderList[index].quantity
                        //             .toString(),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Container picFood(Size size) {
    return Container(
      child: Image.asset(
        "assets/images/food1.jpg",
        width: size.width * 0.4,
      ),
    );
  }
}