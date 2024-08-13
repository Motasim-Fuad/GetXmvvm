import 'package:get/get.dart';
import 'package:getmvvm/resource/App_routes/routes_name.dart';
import 'package:getmvvm/view/Splash_view.dart';
import 'package:getmvvm/view/Login/Login_view.dart';
import 'package:getmvvm/view/home/home_view.dart';

class AppRouts {

  static approutes ()=>[
    GetPage(
        name: RouteName.splashScreen,
        page: ()=> SplashView(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(microseconds: 250),
    ),
    GetPage(
        name: RouteName.loginView,
        page: ()=> LoginView(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(microseconds: 250),
    ),GetPage(
        name: RouteName.homeView,
        page: ()=> HomeView(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(microseconds: 250),
    ),
  ];
}