import 'package:equatable/equatable.dart';

class ForgotPasswordErrorModel extends Equatable {
  final bool? success;
  final String? message;

  ForgotPasswordErrorModel({this.success, this.message});

  factory ForgotPasswordErrorModel.fromJson(Map<String, dynamic> json) {
    return ForgotPasswordErrorModel(
      success: json['success'],
      message: json['message'] is String ? json['message'] : null,
    );
  }

  @override
  List<Object?> get props => [success, message];
}
