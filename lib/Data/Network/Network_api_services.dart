
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getmvvm/Data/Exceptation_Handle.dart';

import 'base_api_servicrs.dart';
import 'package:http/http.dart ' as http;
class NetworkApiServices extends BaseApiServices{
  @override

  Future <dynamic> getApi(String url)async{

    //jodi kisue print korta chai toba ai vaba print korbo
    if (kDebugMode) {
      print(url);

    }
    dynamic responceJson;
    try{
      final responce=await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      // backend devoloper bola diba time out a koto second hoba

      responceJson= returnResponce(responce);
    } on SocketException{
      throw InternetException("");
    }on RequestTimeOut{
      throw RequestTimeOut("");
    }

    return responceJson;
  }

  Future <dynamic> postApi(var data,String url)async{
    //jodi kisue print korta chai toba ai vaba print korbo
    if (kDebugMode) {
      print(url);
      print(data);
    }

    dynamic responceJson;
    try{
      final responce= await http .post(Uri.parse(url),

        body:data// jsonEncode(data),//jodi row from a hoy taila body ai vaba
        // row from a na hola , body:data, ai hoba

      ).timeout(const Duration(seconds: 10));
      // backend devoloper bola diba time out a koto second hoba

      responceJson= returnResponce(responce);
    } on SocketException{
      throw InternetException("");
    }on RequestTimeOut{
      throw RequestTimeOut("");
    }
    if (kDebugMode) {
      print(responceJson);
    }
    return responceJson;
  }

  dynamic returnResponce(http.Response response){
    switch (response.statusCode){
      case 200:
        dynamic responceJson= jsonDecode(response.body);
        return responceJson;
      case 400:
        dynamic responceJson= jsonDecode(response.body);
        return responceJson;
      default:
        throw FatchDataExceptation(" "+response.statusCode.toString());
    }

  }

}