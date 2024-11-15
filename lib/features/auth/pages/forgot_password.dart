import 'dart:developer';

import 'package:airoxal/features/auth/blocs/forgotpassword/forgot_password_bloc.dart';
import 'package:airoxal/features/auth/pages/login_screen.dart';
import 'package:airoxal/features/auth/pages/pin_code.dart';
import 'package:airoxal/features/auth/widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController email = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            'assets/icons/Back.svg',
            width: 30,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.1 * height,
            ),
            const Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.30,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              'Don’t worry! It happens. Please enter the email associated with your account.',
              style: TextStyle(
                color: Colors.black.withOpacity(0.699999988079071),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Email address',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0.09,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 56,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD8DADC)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: 'Enter your email address',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 0.05 * height,
            ),
            BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
              listener: (context, state) {
                switch (state.runtimeType) {
                  case ForgotPasswordLoadingState:
                    log('this is forgot password loading state');
                  case ForgotPasswordErrorState:
                    log('this is forgot password error state');
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text('Email does not exists')));
                  case ForgotPasswordSuccessState:
                    final data = state as ForgotPasswordSuccessState;

                    log('this is forgot password success state');
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(data.data.message!)));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PinCode(
                        getEmail: email.text,
                      );
                    }));
                }
              },
              child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<ForgotPasswordBloc>(context).add(
                        OnForgotPasswordButtonPressed(userName: email.text));
                  },
                  child: const YelloButton(title: 'Send code')),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Align(
          alignment: Alignment.topCenter,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Remember password? ',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextSpan(
                    text: ' Log in',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
