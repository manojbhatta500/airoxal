part of 'otp_auth_bloc.dart';

sealed class OtpAuthEvent extends Equatable {
  const OtpAuthEvent();

  @override
  List<Object> get props => [];
}

final class OnOtpCheckEvent extends OtpAuthEvent {
  final String otp;
  final String email;
  OnOtpCheckEvent({required this.otp, required this.email});
}
