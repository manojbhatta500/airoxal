import 'package:airoxal/features/regions/screens/Regions_package_screen.dart';
import 'package:airoxal/features/regions/widgets/Regional_holder.dart';
import 'package:flutter/material.dart';

class Regions extends StatelessWidget {
  const Regions({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Popular Regions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 0.98 * height,
                  width: width,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegionPackageList()));
                            },
                            child: const RegionalHolder());
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
