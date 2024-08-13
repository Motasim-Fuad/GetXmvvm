class UserModel {
  String? token;
  //bool? isLogin;//ai ta nija thaka hata lika add kora hoisa,, ai vaba kora jaba ,orthat 2nd method ,,video ta asa
  UserModel({this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;

    return data;
  }
}
