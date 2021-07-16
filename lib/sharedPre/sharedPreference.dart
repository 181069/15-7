import 'package:shared_preferences/shared_preferences.dart';

class SpHelper{
  SpHelper._();
  static SpHelper spHelper = SpHelper._();
  SharedPreferences sharedPreferences;
  initSharedPrefences() async{
    sharedPreferences =await SharedPreferences.getInstance();
  }
  saveUserInfo(String name,String Email){
    sharedPreferences.setString('name', name);
    sharedPreferences.setString('Email', Email);
  }
  String getUserName(){
    return sharedPreferences.getString('name');

  }
  String getUserEmail(){
    return sharedPreferences.getString('Email');

  }
}