import 'package:airoxal/features/auth/pages/password_changed.dart';
import 'package:airoxal/utils/constants.dart';
import 'package:airoxal/features/auth/widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                  decoration: InputDecoration(
                      hintText: 'must be 8 characters',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                      suffixIcon: const Icon(Icons.remove_red_eye),
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
                  decoration: InputDecoration(
                      hintText: 'repeat password',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const PasswrodChanged();
                    }));
                  },
                  child: const YelloButton(title: 'Reset password')),
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
