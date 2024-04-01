import 'package:flutter/material.dart';

class RegionalHolder extends StatelessWidget {
  const RegionalHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(10), // Set your desired background color
        boxShadow: [
          BoxShadow(
            color: Colors.grey
                .withOpacity(0.3), // You can adjust the color and opacity here
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 0), // changes the position of the shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Container(
                  child: const Text('flag'),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('regions'),
              ],
            ),
          ),
          Row(
            children: [Image.asset('assets/icons/arrow.png')],
          )
        ],
      ),
    );
  }
}
