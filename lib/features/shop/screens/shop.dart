import 'package:airoxal/features/Country_tab/screens/country.dart';
import 'package:airoxal/features/profile/screens/profile.dart';
import 'package:airoxal/features/regions/screens/regions.dart';
import 'package:airoxal/features/profile/widgets/refer_container.dart';

import 'package:airoxal/gloabal_widegts/show_balance.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  TextEditingController inputcountry = TextEditingController();

  String currentSearch = '';

  void updateSearchResults(String query) {
    setState(() {
      currentSearch = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // FaIcon(
                      //   FontAwesomeIcons.bell,
                      //   size: 30,
                      // ),
                      const Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Profile();
                          }));
                        },
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/pictures/profile.png'),
                          radius: 25,
                          backgroundColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const ShowBalance(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 352,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: const Color(0x3FD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextField(
                      controller: inputcountry,
                      onChanged: updateSearchResults,
                      decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left: 10,
                                right: 10), // Adjust the padding as needed
                            child: Icon(
                              Icons.search,
                              color: Color(0xff545454),
                            ),
                          ),
                          hintText: 'Search by country',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15), // Adjust the padding as needed
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const ReferContainer(),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color(0x3FD9D9D9),
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // Creates border
                          color: const Color(0xffFFFFFF)),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: const [
                        Text(
                          'Country',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Regional',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Lifetime',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.65 * height,
                    child: TabBarView(
                      children: [
                        Country(country: currentSearch),
                        const Regions(),
                        const Center(child: Text('Tab 2 content')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
