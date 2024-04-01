import 'package:airoxal/features/regions/screens/buy_region_datas.dart';
import 'package:airoxal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegionPackageContainer extends StatelessWidget {
  const RegionPackageContainer(
      {super.key,
      required this.coverage,
      required this.remainingdata,
      required this.timeleft,
      required this.Price});

  final String coverage;
  final String remainingdata;
  final String timeleft;
  final String Price;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        height: 0.30 * height,
        width: 0.9 * width,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff082777),
                Color(0xff88A9FD),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Row(
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
                          color: Color(0xffFFFFFF),
                          fontFamily: 'Inter',
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
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
                        'Africa',
                        style: whitemiddle,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
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
                            'Data',
                            style: whitemiddle,
                          )
                        ],
                      ),
                      Text(
                        '$remainingdata GB',
                        style: whitemiddle,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
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
                        style: whitemiddle,
                      )
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BuyRegionData()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: 30,
                  width: 0.7 * width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Text(
                      'BUY FOR $Price\$',
                      style: whitemiddle,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
