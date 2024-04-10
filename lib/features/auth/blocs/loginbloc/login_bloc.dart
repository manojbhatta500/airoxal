import 'dart:async';
import 'dart:developer';

import 'package:airoxal/features/auth/repos/login_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<OnLoginButtonPressed>(onLoginButtonPressed);
  }
  LoginRepository manager = LoginRepository();
  FutureOr<void> onLoginButtonPressed(
      OnLoginButtonPressed event, Emitter<LoginState> emit) async {
    final String email = event.email;
    final String password = event.password;
    emit(LoginLoading());

    final repoResponse =
        await manager.logInAction(email: email, password: password);
    repoResponse.fold((l) {
      log('left unsuccessmodel');
      emit(LoginFailed(failedMessage: l.message!));
    }, (r) {
      log('right Success model');
      emit(LoginSuccess());
    });
  }
}
