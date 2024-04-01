import 'package:airoxal/features/auth/pages/login_screen.dart';
import 'package:airoxal/features/auth/widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswrodChanged extends StatefulWidget {
  const PasswrodChanged({super.key});

  @override
  State<PasswrodChanged> createState() => _PasswrodChangedState();
}

class _PasswrodChangedState extends State<PasswrodChanged> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 0.3 * height,
            ),
            SvgPicture.asset(
              'assets/pictures/Group.svg',
              width: 100,
            ),
            SizedBox(
              height: 0.04 * height,
            ),
            const Text(
              'Password changed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.30,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              'Your password has been changed succesfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.699999988079071),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                child: const YelloButton(title: 'Back to login'))
          ],
        ),
      ),
    ));
  }
}
