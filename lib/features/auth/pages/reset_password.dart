import 'dart:developer';

import 'package:airoxal/features/auth/blocs/resetpassword/reset_password_bloc.dart';
import 'package:airoxal/features/auth/pages/password_changed.dart';
import 'package:airoxal/utils/constants.dart';
import 'package:airoxal/features/auth/widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key, required this.getEmail});

  final String getEmail;

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var showPassword1 = false;

  var showPassword2 = false;

  final TextEditingController password1 = TextEditingController();

  final TextEditingController password2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
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
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.1 * height,
              ),
              const Text(
                'Reset password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.30,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Please type something you’ll remember',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.69),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'New password',
                style: blackmiddle,
              ),
              const SizedBox(
                height: 5,
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
                  controller: password1,
                  obscureText: showPassword1,
                  decoration: InputDecoration(
                      hintText: 'must be 8 characters',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            if (showPassword1) {
                              setState(() {
                                showPassword1 = false;
                              });
                            } else {
                              setState(() {
                                showPassword1 = true;
                              });
                            }
                          },
                          icon: showPassword1
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                'Confirm new password',
                style: blackmiddle,
              ),
              const SizedBox(
                height: 5,
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
                  controller: password2,
                  obscureText: showPassword2,
                  decoration: InputDecoration(
                      hintText: 'repeat password',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            if (showPassword2) {
                              setState(() {
                                showPassword2 = false;
                              });
                            } else {
                              setState(() {
                                showPassword2 = true;
                              });
                            }
                          },
                          icon: showPassword2
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              BlocListener<ResetPasswordBloc, ResetPasswordState>(
                listener: (context, state) {
                  switch (state.runtimeType) {
                    case ResetPasswordSuccess:
                      log('this is reset password success state');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const PasswrodChanged();
                      }));
                    case ResetPasswordFailed:
                      log('this is reset password failed state');
                    default:
                      log('this is reset password default state');
                  }
                },
                child: GestureDetector(
                    onTap: () {
                      if (password1.text == password2.text) {
                        BlocProvider.of<ResetPasswordBloc>(context).add(
                            OnRestButtonPressed(
                                email: widget.getEmail,
                                password: password1.text,
                                confirm_password: password2.text));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                            content: Text('password should match')));
                      }
                    },
                    child: const YelloButton(title: 'Reset password')),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 50,
      //   color: Colors.white,
      //   child: Align(
      //     alignment: Alignment.topCenter,
      //     child: Text.rich(
      //       TextSpan(
      //         children: [
      //           TextSpan(
      //             text: 'Already have an account? ',
      //             style: TextStyle(
      //               color: Colors.black.withOpacity(0.699999988079071),
      //               fontSize: 14,
      //               fontFamily: 'Inter',
      //               fontWeight: FontWeight.w400,
      //             ),
      //           ),
      //           const TextSpan(
      //             text: 'Log in',
      //             style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 14,
      //               fontFamily: 'Inter',
      //               fontWeight: FontWeight.w600,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    ));
  }
}
