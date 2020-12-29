import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      // height: 120.0,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Image.asset('assets/icons/food.png'),
    );
  }
}
