import 'dart:developer';

import 'package:airoxal/features/auth/blocs/loginbloc/login_bloc.dart';
import 'package:airoxal/features/auth/pages/choose.dart';
import 'package:airoxal/features/auth/pages/forgot_password.dart';
import 'package:airoxal/features/auth/widgets/yello_button.dart';
import 'package:airoxal/features/home/screens/home.dart';
import 'package:airoxal/utils/widgets/auth_text_feild.dart';
import 'package:airoxal/utils/widgets/auth_text_feild_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var showPassword = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 0.01 * height,
              ),
              Image.asset(
                'assets/pictures/air.png',
                width: 200,
              ),
              SizedBox(
                height: 0.04 * height,
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email address',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.09,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AuthTextFeild(
                controller: emailController,
                hintText: 'Enter your email address',
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.09,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AuthTextFeildPassword(
                  controller: passwordController, hinttext: "password"),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 0.05 * height,
              ),
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LoginSuccess) {
                    log('this is success state from login bloc');
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Text('Logged In successfully')));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  } else if (state is LoginFailed) {
                    log('this is failed state from login bloc');
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(state.failedMessage)));
                  } else {
                    log('this is else method and should run first i guess');
                  }
                },
                child: GestureDetector(
                    onTap: () {
                      BlocProvider.of<LoginBloc>(context).add(
                          OnLoginButtonPressed(
                              email: emailController.text,
                              password: passwordController.text));
                    },
                    child: const YelloButton(title: 'Login')),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()));
                  },
                  child: const Text('Forgot password ?'))
            ],
          ),
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
                  MaterialPageRoute(builder: (context) => const Choose()));
            },
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Haven't Signed Up ?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextSpan(
                    text: ' SignUp',
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
