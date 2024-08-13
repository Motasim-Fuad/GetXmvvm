import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getmvvm/View_Model/Controller/login/Login_vew_model.dart';
import 'package:getmvvm/resource/compunents/RoundButton.dart';
import 'package:getmvvm/utils/utils.dart';
import 'package:getmvvm/view/Login/widgets/input_email_widget.dart';
import 'package:getmvvm/view/Login/widgets/input_password_widget.dart';
import 'package:getmvvm/view/Login/widgets/login_Button_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  // void dispose() {
  //   // TODO: implement dispose
  //   Get.delete<LoginViewModel>();
  //   //aitir mana holo jokon login view model ar kaj complete hoba tokon ati oi class remove korba ,
  //   // ,fola ram optimijation kom hobe
  //   super.dispose();
  // }
  // ai method ar madhoma kora jaba ,, abar login view model class a jayao kora jaba ,,fola aro better hoba
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('login_title'.tr),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Inputemail_widget(),
                    SizedBox(height: 29,),
                    InputPasswordWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 29,
              ),
             LoginButtonWidget(fromkey: _formKey,)
            ],
          ),
        ));
  }
}
