part of 'otp_auth_bloc.dart';

sealed class OtpAuthState extends Equatable {
  const OtpAuthState();

  @override
  List<Object> get props => [];
}

final class OtpAuthInitial extends OtpAuthState {}

final class OtpAuthSuccess extends OtpAuthState {}

final class OtpAuthFailed extends OtpAuthState {}

final class OtpAuthLoading extends OtpAuthState {}
