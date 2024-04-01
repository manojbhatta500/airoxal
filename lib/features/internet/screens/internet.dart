import 'package:airoxal/features/internet/widgets/current_esim.dart';
import 'package:airoxal/gloabal_widegts/show_balance.dart';
import 'package:flutter/material.dart';

class Internet extends StatefulWidget {
  const Internet({super.key});

  @override
  State<Internet> createState() => _InternetState();
}

class _InternetState extends State<Internet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/pictures/profile.png'),
                    radius: 25,
                    backgroundColor: Colors.white,
                  )
                ],
              ),
              ShowBalance(),
              SizedBox(
                height: 20,
              ),
              Text(
                'My current airoxals',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Currentairoxal(
                  coverage: 'georgia', remainingdata: '0.754', timeleft: '7')
            ],
          ),
        ),
      ),
    ));
  }
}
