import 'package:flutter/material.dart';

class RefBox extends StatelessWidget {
  const RefBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 345,
          height: 66,
          decoration: ShapeDecoration(
            color: const Color(0x3FD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Referral - 3498439903\n',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '\n12 aug. 2023, 09:17',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Text(
                          '4.00€',
                          style: TextStyle(
                              color: Color(0xff1AC221),
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          'assets/icons/arrow.png',
                          width: 30,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
