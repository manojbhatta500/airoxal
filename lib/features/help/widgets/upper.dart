import 'package:airoxal/utils/constants.dart';
import 'package:flutter/material.dart';

class upper extends StatelessWidget {
  const upper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 15,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/install');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Image.asset('assets/icons/Processor.png'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'airoxal installation guide',
                            style: helptext,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [Image.asset('assets/icons/arrow.png')],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset('assets/icons/blue_help.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'FAQ',
                        style: helptext,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [Image.asset('assets/icons/arrow.png')],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
