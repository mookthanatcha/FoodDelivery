import 'package:flutter/material.dart';
import 'package:mookfood/models/user.dart';

class UserProvider extends ChangeNotifier {
  User user = User();

  setNickNameUser(String value) => user.nickName = value;
  getNickNameUser() => user.nickName;

  
}
