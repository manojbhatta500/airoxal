part of 'signin_bloc.dart';

sealed class SigninState extends Equatable {
  const SigninState();

  @override
  List<Object> get props => [];
}

final class SigninInitial extends SigninState {}

final class SigninProcessingState extends SigninState {}

final class SigninSuccessState extends SigninState {}

final class SigninFailedState extends SigninState {
  String errorMessage;

  SigninFailedState({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
