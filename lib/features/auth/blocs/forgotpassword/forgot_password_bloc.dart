import 'dart:async';
import 'dart:developer';

import 'package:airoxal/features/auth/models/forgot_password_error_model.dart';
import 'package:airoxal/features/auth/models/forgot_password_success_model.dart';
import 'package:airoxal/features/auth/repos/forgotpassword_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(ForgotPasswordInitial()) {
    on<OnForgotPasswordButtonPressed>(_onForgotpasswordFunction);
  }

  ForgotPasswordRepository manager = ForgotPasswordRepository();

  FutureOr<void> _onForgotpasswordFunction(OnForgotPasswordButtonPressed event,
      Emitter<ForgotPasswordState> emit) async {
    log('this is forgot password email getter ${event.userName}');
    emit(ForgotPasswordLoadingState());
    final respo = await manager.hitForgotPasswordApi(event.userName);
    respo.fold((l) => {emit(ForgotPasswordErrorState(data: l))},
        (r) => {emit(ForgotPasswordSuccessState(data: r))});
  }
}
