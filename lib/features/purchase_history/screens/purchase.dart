import 'package:airoxal/features/purchase_history/screens/balance.dart';
import 'package:airoxal/features/purchase_history/screens/plan.dart';
import 'package:airoxal/features/purchase_history/screens/referal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Purchase extends StatefulWidget {
  const Purchase({super.key});

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
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
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.05 * height,
                ),
                const Text(
                  'Purchase history',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 0.03 * height,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color(0x7FD9D9D9),
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10), // Creates border
                        color: const Color(0xffFFFFFF)),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      Tab(
                          child: Center(
                              child: Text(
                        'Plan',
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
                        'Balance',
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
                        'Referrals',
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
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 0.65 * height,
                  child: const TabBarView(
                    children: [
                      Plan(),
                      Balance(),
                      Referrals(),
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
