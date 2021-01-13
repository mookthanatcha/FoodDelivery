import 'package:flutter/material.dart';
import 'package:mookfood/constant.dart';
import 'package:mookfood/providers/category_provider.dart';
import 'package:mookfood/providers/foodShop_provider.dart';
import 'package:mookfood/providers/order_provider.dart';
import 'package:mookfood/providers/taskList_provider.dart';
import 'package:mookfood/providers/user_provider.dart';
import 'package:mookfood/route_generator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
        ChangeNotifierProvider<OrderProvider>(create: (_) => OrderProvider()),
        ChangeNotifierProvider<CategoryProvider>(create: (_) => CategoryProvider()),
        ChangeNotifierProvider<TaskListProvider>(create: (_) => TaskListProvider()),
        ChangeNotifierProvider<FoodShopProvider>(create: (_) => FoodShopProvider()),
      

      ],
      child: MaterialApp(
        title: 'Mook Food',
        theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "/signInPage",
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
