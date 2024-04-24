import 'dart:developer';

import 'package:airoxal/features/auth/blocs/Otp_auth/otp_auth_bloc.dart';
import 'package:airoxal/features/auth/pages/reset_password.dart';
import 'package:airoxal/features/auth/widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class PinCode extends StatefulWidget {
  PinCode({super.key, required this.getEmail});
  final String getEmail;

  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  final TextEditingController _pinCodeController = TextEditingController();

  @override
  void dispose() {
    _pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
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
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.08 * height,
              ),
              const Text(
                'Please check your email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.30,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'We’ve sent a code to ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.699999988079071),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: '${widget.getEmail}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              PinCodeFields(
                length: 6,
                fieldBorderStyle: FieldBorderStyle.square,
                fieldHeight: 70.0,
                fieldWidth: 50.0,
                borderWidth: 1.0,
                controller: _pinCodeController,
                onComplete: (result) {},
              ),
              SizedBox(
                height: 0.1 * height,
              ),
              BlocListener<OtpAuthBloc, OtpAuthState>(
                listener: (context, state) {
                  switch (state.runtimeType) {
                    case OtpAuthLoading:
                      log('this is logging state of verify otp page');
                    case OtpAuthSuccess:
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('verified successfully')));
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ResetPassword(
                          getEmail: widget.getEmail,
                        );
                      }));
                    case OtpAuthFailed:
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Otp Didn't matched.")));

                    default:
                      log('this is default log states');
                  }
                },
                child: GestureDetector(
                    onTap: () {
                      BlocProvider.of<OtpAuthBloc>(context).add(OnOtpCheckEvent(
                          otp: _pinCodeController.text,
                          email: widget.getEmail));
                    },
                    child: const YelloButton(title: 'Verify')),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Send code again',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0.08,
                        ),
                      ),
                      TextSpan(
                        text: ' 00:20',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
