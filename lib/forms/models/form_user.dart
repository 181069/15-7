import 'package:flutter/material.dart';
import 'package:responsive/forms/ui/home/ui/customer_page.dart';
import 'package:responsive/forms/ui/home/ui/mershant_page.dart';
import 'package:responsive/forms/ui/register/main_register_screen.dart';

class FormUser {
  UserType userType;
  String email;
  String password;
  String shopName;
  String bio;
  String category;
  String shopAddress;

  FormUser(this.category);
  FormUser.customer(
      {@required this.email,
      @required this.password,
      this.userType = UserType.customer});
  FormUser.mershant(
      {@required this.email,
      @required this.password,
      @required this.shopName,
      @required this.shopAddress,
      @required this.bio,
      @required this.category,
      this.userType = UserType.mershant});
  FormUser.fromUserType(UserType userType, BuildContext context) {
    if (userType == UserType.mershant) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return MershantPage();
      }));
    } else {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return CustomerPage();
      }));
    }
  }
}
