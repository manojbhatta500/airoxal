import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Company extends StatelessWidget {
  const Company({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: 60,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFD8DADC)),
              borderRadius: BorderRadius.circular(28),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 25,
            ),
            SvgPicture.asset(
              image,
              width: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ));
  }
}
