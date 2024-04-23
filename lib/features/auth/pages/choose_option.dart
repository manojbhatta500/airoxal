import 'package:airoxal/features/auth/pages/choose.dart';
import 'package:airoxal/features/auth/pages/login_screen.dart';
import 'package:airoxal/features/auth/widgets/yello_button.dart';
import 'package:flutter/material.dart';

class ChooseOption extends StatelessWidget {
  const ChooseOption({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xffF0F3FB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 0.02 * height,
              ),
              Image.asset(
                'assets/pictures/air.png',
                width: 200,
              ),
              SizedBox(
                height: 0.15 * height,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const YelloButton(title: 'Login')),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Choose()));
                  },
                  child: const YelloButton(title: 'Signup')),
              const Spacer(),
              const Text(
                ' Unlock the World ',
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
    );
  }
}
