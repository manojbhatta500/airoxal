import 'dart:async';
import 'dart:developer';

import 'package:airoxal/features/auth/repos/reset_password.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(ResetPasswordInitial()) {
    on<OnRestButtonPressed>(_onPressed);
  }

  ResetPasswordRepository manager = ResetPasswordRepository();

  FutureOr<void> _onPressed(
      OnRestButtonPressed event, Emitter<ResetPasswordState> emit) async {
    emit(ResetPasswordLoading());
    final repoResponse = await manager.resetPassword(
        event.email, event.password, event.confirm_password);

    log('this is reset password bloc and this is repo response ${repoResponse}');

    if (repoResponse == 1) {
      emit(ResetPasswordSuccess());
    } else {
      emit(ResetPasswordFailed());
    }
  }
}
