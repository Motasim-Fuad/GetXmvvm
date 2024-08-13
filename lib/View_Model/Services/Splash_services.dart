
import 'dart:async';

import 'package:get/get.dart';
import 'package:getmvvm/View_Model/Controller/login/user_prefrrence/user_preference_view_model.dart';
import 'package:getmvvm/resource/App_routes/routes_name.dart';

class SplashServices{
  UserPreferences userPreferences=UserPreferences();

  void isLogin(){

    userPreferences.getUser().then((value) {
      print(value.token);
      if( value.token.toString()=="null"){
        //value.token!.isEmpty
        Timer(Duration(seconds: 3), () {
          Get.offNamed(RouteName.loginView);
        });
      }else{
        Timer(Duration(seconds: 3), () {
          Get.offNamed(RouteName.homeView);
        });
      }
    });
  }
}