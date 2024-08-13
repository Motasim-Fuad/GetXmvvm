import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../View_Model/Controller/login/Login_vew_model.dart';
import '../../../utils/utils.dart';

class InputPasswordWidget extends StatelessWidget {
   InputPasswordWidget({Key? key}) : super(key: key);
  final loginVM = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.PasswordController.value,
      focusNode: loginVM.passwordfocuseNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar("password", "enter password");
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'passhint'.tr,
        border: OutlineInputBorder(),
      ),
    );
  }
}
