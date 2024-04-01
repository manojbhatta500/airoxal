import 'package:airoxal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class lower extends StatelessWidget {
  const lower({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset('assets/icons/telegram.svg'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Contact with support',
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
    );
  }
}
