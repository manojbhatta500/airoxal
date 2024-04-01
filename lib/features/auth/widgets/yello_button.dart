import 'package:flutter/material.dart';

class YelloButton extends StatefulWidget {
  const YelloButton({super.key, required this.title});
  final String title;

  @override
  State<YelloButton> createState() => _YelloButtonState();
}

class _YelloButtonState extends State<YelloButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: 56,
      decoration: ShapeDecoration(
        color: const Color(0xFFFB9C2C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
          child: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          height: 0.08,
        ),
      )),
    );
  }
}
