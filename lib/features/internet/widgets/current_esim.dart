import 'package:airoxal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Currentairoxal extends StatelessWidget {
  const Currentairoxal(
      {super.key,
      required this.coverage,
      required this.remainingdata,
      required this.timeleft});

  final String coverage;
  final String remainingdata;
  final String timeleft;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: double.infinity,
        height: 240,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff082777),
              Color(0xff88A9FD),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0F000000),
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: -1,
            ),
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 6,
              offset: Offset(0, 4),
              spreadRadius: -1,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              children: [
                Image(
                  image: AssetImage(
                    'assets/icons/antenna.png',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Kargi Mobile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/world.svg',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Coverage',
                      style: whitemiddle,
                    )
                  ],
                ),
                Text(
                  coverage,
                  style: whitemiddle,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Image(
                      image: AssetImage(
                        'assets/icons/data.png',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Remaining data',
                      style: whitemiddle,
                    )
                  ],
                ),
                Text(
                  '$remainingdata GB',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/symbols.svg',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Time left',
                      style: whitemiddle,
                    )
                  ],
                ),
                Text(
                  '$timeleft d',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 145,
                  height: 29,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'REFILL BALANCE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 140,
                  height: 29,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: const Center(
                    child: Text(
                      'INFORMATION',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
