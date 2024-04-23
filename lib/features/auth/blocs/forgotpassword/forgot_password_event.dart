part of 'forgot_password_bloc.dart';

sealed class ForgotPasswordEvent extends Equatable {
  const ForgotPasswordEvent();

  @override
  List<Object> get props => [];
}

final class OnForgotPasswordButtonPressed extends ForgotPasswordEvent {
  final String userName;
  OnForgotPasswordButtonPressed({required this.userName});
}
