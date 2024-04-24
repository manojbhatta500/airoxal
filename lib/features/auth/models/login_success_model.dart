class LoginSuccessModel {
  bool? success;
  String? message;
  Data? data;

  LoginSuccessModel({this.success, this.message, this.data});

  LoginSuccessModel.fromJson(Map<String, dynamic> json) {
    success = json['success'] == 'True'; // Change is made here
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['success'] = success;
    data['message'] = message;
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
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  dynamic image;
  dynamic country;
  dynamic city;
  String? otpNumber;
  dynamic otpVerify;
  String? createdAt;
  String? updatedAt;

  User({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.image,
    this.country,
    this.city,
    this.otpNumber,
    this.otpVerify,
    this.createdAt,
    this.updatedAt,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    image = json['image'];
    country = json['country'];
    city = json['city'];
    otpNumber = json['otp_number'];
    otpVerify = json['otp_verify'] != null
        ? json['otp_verify']
        : null; // Handle null value
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['image'] = image;
    data['country'] = country;
    data['city'] = city;
    data['otp_number'] = otpNumber;
    data['otp_verify'] = otpVerify;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
