import 'package:flutter/material.dart';

class AuthTextFeildPassword extends StatefulWidget {
  const AuthTextFeildPassword(
      {super.key, required this.controller, required this.hinttext});
  final TextEditingController controller;
  final String hinttext;
  @override
  State<AuthTextFeildPassword> createState() => _AuthTextFeildPasswordState();
}

class _AuthTextFeildPasswordState extends State<AuthTextFeildPassword> {
  bool showtext = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFD8DADC)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: showtext,
        decoration: InputDecoration(
            hintText: widget.hinttext,
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    if (!showtext) {
                      showtext = true;
                    } else {
                      showtext = false;
                    }
                  });
                },
                icon: showtext
                    ? const Icon(Icons.lock)
                    : const Icon(Icons.remove_red_eye)),
            border: InputBorder.none),
      ),
    );
  }
}
