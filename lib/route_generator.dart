import 'package:flutter/material.dart';
import 'package:mookfood/screens/addTask.dart';
import 'package:mookfood/screens/content.dart';
import 'package:mookfood/screens/detail_menu.dart';
import 'package:mookfood/screens/homeScreen.dart';
import 'package:mookfood/screens/menu.dart';
import 'package:mookfood/screens/signIn.dart';
import 'package:mookfood/screens/signup.dart';
import 'package:mookfood/screens/test.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case '/signInPage':
        return MaterialPageRoute(builder: (context) => SignIn());
      case '/signUpPage':
        return MaterialPageRoute(builder: (context) => SignUp());
      case '/contentPage':
        return MaterialPageRoute(builder: (context) => Content());
      case '/testPage':
        return MaterialPageRoute(builder: (context) => Test());
      case '/addTaskPage':
        return MaterialPageRoute(builder: (context) => AddTask());
      case '/meNuPage':
        return MaterialPageRoute(builder: (context) => Menu());
      case '/detailMeNuPage':
        return MaterialPageRoute(builder: (context) => DetailMenu());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error")),
      );
    });
  }
}
