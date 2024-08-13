import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:get/get.dart';
import 'package:getmvvm/Repositry/Login_repositry/Login_repositry.dart';
import 'package:getmvvm/View_Model/Controller/login/user_prefrrence/user_preference_view_model.dart';
import 'package:getmvvm/models/Login/User_Responce_models.dart';
import 'package:getmvvm/resource/App_routes/routes_name.dart';
import 'package:getmvvm/utils/utils.dart';

class LoginViewModel{

  final _api=LoginRepositry();
  UserPreferences userPreferences=UserPreferences();

  final EmailController=TextEditingController().obs;
  final PasswordController=TextEditingController().obs;

final emailfocuseNode=FocusNode().obs;
final passwordfocuseNode=FocusNode().obs;
 RxBool loading=false.obs;


void loginApi(){
  loading.value=true;
  Map data={
    'email':EmailController.value.text,
    'password':PasswordController.value.text,
  };

  _api.loginApi(data).then((value){
    loading.value=false;

    if(value['error'] == "user not found"){
      Utils.snackBar("login", value['error']);
    }else{
      userPreferences.saveUser(UserModel.fromJson(value)).then((value) {
        Get.delete<LoginViewModel>(); // a ti loginiewmodel class ar data golo clear korba ,,
        // fola ram kom conjume hoba ,, and oi faka space ono kaja lakba

        Get.offNamed(RouteName.homeView)!.then((value) {});
        Utils.snackBar("login", " login successfully");
      }).onError((error, stackTrace) {

      });

    }


  }).onError((error, stackTrace){
    if (kDebugMode) {
      print(error.toString());
    }

    loading.value=false;
    Utils.snackBar("Error", error.toString());
  });
}
}