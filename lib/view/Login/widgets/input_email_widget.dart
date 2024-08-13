import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../View_Model/Controller/login/Login_vew_model.dart';
import '../../../utils/utils.dart';

class Inputemail_widget extends StatelessWidget {
   Inputemail_widget({Key? key}) : super(key: key);
  final loginVM = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {

    return TextFormField(

      controller: loginVM.EmailController.value,
      focusNode: loginVM.emailfocuseNode.value,

      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar("Email", "Enter Email");
        }
        return null;
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(
            context,
            loginVM.emailfocuseNode.value,
            loginVM.passwordfocuseNode.value);
      },
      decoration: InputDecoration(
        hintText: 'emailhint'.tr,
        border: OutlineInputBorder(),
      ),
    );
  }
}
