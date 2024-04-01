import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:airoxal/features/auth/repos/signin_repo.dart';
import 'package:airoxal/utils/access_token.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc() : super(SigninInitial()) {
    on<OnSignInButtonPressed>(_onSignInButtonPressed);
  }

  SignInRepository blocManager = SignInRepository();

  FutureOr<void> _onSignInButtonPressed(
      OnSignInButtonPressed event, Emitter<SigninState> emit) async {
    emit(SigninProcessingState());

    final repoResponse = await blocManager.signInAction(
        email: event.email, name: event.name, password: event.password);
    repoResponse.fold((l) {
      String errormessage = l.message!;
      emit(SigninFailedState(errorMessage: errormessage));
    }, (r) {
      AccessToken.accessToken = r.data!.token!;
      log("this si my bloc state successtoken ${AccessToken.accessToken}");
      emit(SigninSuccessState());
    });
  }
}
