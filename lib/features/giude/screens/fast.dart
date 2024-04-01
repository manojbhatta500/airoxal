import 'package:airoxal/features/giude/widgets/installEsim.dart';
import 'package:flutter/material.dart';

class Fast extends StatefulWidget {
  const Fast({super.key});

  @override
  State<Fast> createState() => _FastState();
}

class _FastState extends State<Fast> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Follow these steps to seamlessly install airoxal',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InstallairoxalProfileWidget(),
              SizedBox(
                height: 25,
              ),
              Text(
                'Step 2 of 2\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF19C120),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
