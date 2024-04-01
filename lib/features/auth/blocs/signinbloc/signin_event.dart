part of 'signin_bloc.dart';

sealed class SigninEvent extends Equatable {
  const SigninEvent();

  @override
  List<Object> get props => [];
}

final class OnSignInButtonPressed extends SigninEvent {
  final String email;
  final String password;
  final String name;
  OnSignInButtonPressed(
      {required this.email, required this.password, required this.name});
}
