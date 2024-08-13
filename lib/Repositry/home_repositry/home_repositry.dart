import 'package:getmvvm/Data/Network/Network_api_services.dart';
import 'package:getmvvm/models/home/user_ListModel.dart';
import 'package:getmvvm/resource/App_Url/app_url.dart';

class HomeRepositry{

  // ati get api ar jonno
  final _apiservices= NetworkApiServices();
  Future <UserListModel> userListApi()async{
    final responce=await _apiservices.getApi(AppUrl.userlistApi);
    return UserListModel.fromJson(responce);
  }
}