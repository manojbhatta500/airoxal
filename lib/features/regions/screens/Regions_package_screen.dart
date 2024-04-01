import 'package:airoxal/features/regions/widgets/Region_package_container.dart';
import 'package:airoxal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegionPackageList extends StatelessWidget {
  const RegionPackageList({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
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
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Africa',
                style: blackbig,
              ),
              const SizedBox(
                height: 30,
              ),
              const RegionPackageContainer(
                  coverage: 'Africa',
                  remainingdata: '1',
                  timeleft: '10',
                  Price: '199'),
              const SizedBox(
                height: 20,
              ),
              const RegionPackageContainer(
                  coverage: 'Africa',
                  remainingdata: '1',
                  timeleft: '10',
                  Price: '199'),
              const SizedBox(
                height: 20,
              ),
              const RegionPackageContainer(
                  coverage: 'Africa',
                  remainingdata: '1',
                  timeleft: '10',
                  Price: '199'),
            ],
          ),
        ),
      ),
    ));
  }
}
