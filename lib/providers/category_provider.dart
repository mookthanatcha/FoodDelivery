import 'package:flutter/cupertino.dart';
import 'package:mookfood/models/category.dart';
import 'package:mookfood/models/category.dart';
import 'package:provider/provider.dart';

class CategoryProvider extends ChangeNotifier {
  List<Category> categoryList = [
    Category(categoryName: "Fastfood"),
    Category(categoryName: "Japanese food"),
    Category(categoryName: "Italian food"),
    Category(categoryName: "Thai food"),
  ];

    List<Category> getCategoryList() => categoryList;

}
