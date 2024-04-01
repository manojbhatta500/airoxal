import 'package:airoxal/features/Country_tab/widgets/country_list.dart';
import 'package:flutter/material.dart';

class Country extends StatefulWidget {
  const Country({super.key, required this.country});
  final String country;

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
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
                'Popular countries',
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
                  child: CountryList(searchQuery: widget.country))
            ],
          ),
        ),
      ),
    );
  }
}
