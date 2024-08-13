

import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getmvvm/resource/Colors/app_colors.dart';

class Utils{
  // jodi email,pass dui ta fild thaka toba focush change korar method
  static void fieldFocusChange(BuildContext context,
      FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  // tostMassage method
static tostMassage(String massage){
  Fluttertoast.showToast(
      msg: massage,
      backgroundColor:AppColor.blackCloor,
      gravity: ToastGravity.CENTER
  );
}



static snackBar(String title,String message){
    Get.snackbar(
        title,
        message,

    );
}


}