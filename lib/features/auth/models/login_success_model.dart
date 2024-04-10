class LoginSuccessModel {
  String? success;
  String? message;
  Data? data;

  LoginSuccessModel({this.success, this.message, this.data});

  LoginSuccessModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  Null? emailVerifiedAt;
  Null? image;
  Null? country;
  Null? city;
  String? otpNumber;
  Null? otpVerify;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.image,
      this.country,
      this.city,
      this.otpNumber,
      this.otpVerify,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    image = json['image'];
    country = json['country'];
    city = json['city'];
    otpNumber = json['otp_number'];
    otpVerify = json['otp_verify'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['image'] = this.image;
    data['country'] = this.country;
    data['city'] = this.city;
    data['otp_number'] = this.otpNumber;
    data['otp_verify'] = this.otpVerify;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
