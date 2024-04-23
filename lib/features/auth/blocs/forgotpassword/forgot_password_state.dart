part of 'forgot_password_bloc.dart';

sealed class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();

  @override
  List<Object> get props => [];
}

final class ForgotPasswordInitial extends ForgotPasswordState {}

final class ForgotPasswordSuccessState extends ForgotPasswordState {
  final ForgotPasswordSuccessModel data;
  ForgotPasswordSuccessState({required this.data});
}

final class ForgotPasswordLoadingState extends ForgotPasswordState {}

final class ForgotPasswordErrorState extends ForgotPasswordState {
  ForgotPasswordErrorModel data;
  ForgotPasswordErrorState({required this.data});
}
