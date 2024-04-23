import 'dart:async';
import 'dart:developer';

import 'package:airoxal/features/auth/repos/otp_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'otp_auth_event.dart';
part 'otp_auth_state.dart';

class OtpAuthBloc extends Bloc<OtpAuthEvent, OtpAuthState> {
  OtpAuthBloc() : super(OtpAuthInitial()) {
    on<OnOtpCheckEvent>(_onButtonPressed);
  }
  VerifyOtp manager = VerifyOtp();

  FutureOr<void> _onButtonPressed(
      OnOtpCheckEvent event, Emitter<OtpAuthState> emit) async {
    log('this is bloc verify otp ${event.email}');
    log('this is bloc verify otp ${event.otp}');

    emit(OtpAuthLoading());
    final repoResponse = await manager.hitVerifyOtpApi(event.email, event.otp);
    if (repoResponse == 1) {
      emit(OtpAuthSuccess());
    } else {
      emit(OtpAuthFailed());
    }
  }
}
