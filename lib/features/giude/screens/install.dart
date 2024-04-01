import 'package:airoxal/features/giude/screens/fast.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Install extends StatefulWidget {
  const Install({super.key});

  @override
  State<Install> createState() => _InstallState();
}

class _InstallState extends State<Install> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.1 * height,
                ),
                const Text(
                  'How to install airoxal',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color(0x3FD9D9D9),
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFFFFFF)),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      Tab(
                          child: Center(
                              child: Text(
                        'Fast',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ))),
                      Tab(
                          child: Center(
                              child: Text(
                        'Manual',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ))),
                      Tab(
                          child: Center(
                              child: Text(
                        'QR-code',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.65 * height,
                  child: const TabBarView(
                    children: [
                      Fast(),
                      Text('adsa'),
                      Text('adsa'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
