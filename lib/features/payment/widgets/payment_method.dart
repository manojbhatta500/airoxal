import 'package:airoxal/utils/constants.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod(
      {super.key,
      required this.title,
      required this.image,
      required this.check});

  final String title;
  final String image;
  final bool check;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 0.1 * height,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(217, 217, 217, 0.25),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            width: 80,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: blackmiddle,
          ),
          const SizedBox(
            width: 15,
          ),
          check ? const Inside() : Image.asset('assets/icons/arrow.png'),
        ],
      ),
    );
  }
}

class Inside extends StatelessWidget {
  const Inside({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Center(
        child: Text(
          'CHOOSE',
          style: profilesmall,
        ),
      ),
    );
  }
}
