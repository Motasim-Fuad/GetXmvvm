import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../View_Model/Controller/login/Login_vew_model.dart';
import '../../../resource/compunents/RoundButton.dart';

class LoginButtonWidget extends StatelessWidget {
  final fromkey;
   LoginButtonWidget({Key? key,required this.fromkey}) : super(key: key);
  final loginVM = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return  Obx(() =>RoundButton(
        height: Get.height*.07,
        width: Get.width*.4,
        title: 'login'.tr,
        loading: loginVM.loading.value,
        onPress: () {
          if (fromkey.currentState!.validate()) {
            loginVM.loginApi();
          }
        }));
  }
}
