import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key key,
    @required this.size, this.shopName, this.press, this.image,
  }) : super(key: key);

  final Size size;
  final String shopName;
  final Function press;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: size.height * 0.22,
        child: Stack(
          children: <Widget>[
            Container(
              width: size.width * 0.45,
              padding: EdgeInsets.all(30.0),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.dstATop),
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                shopName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
