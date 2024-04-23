part of 'reset_password_bloc.dart';

sealed class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object> get props => [];
}

final class OnRestButtonPressed extends ResetPasswordEvent {
  final String email;
  final String password;
  final String confirm_password;

  OnRestButtonPressed(
      {required this.email,
      required this.password,
      required this.confirm_password});
}
