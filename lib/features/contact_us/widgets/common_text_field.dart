import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final String hintName;
  final controller;
  final maxline;
  final keyboardType;
  const CommonTextField(
      {super.key,
      required this.hintName,
      this.controller,
      this.maxline,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxline,
     keyboardType: keyboardType,
    
      
      cursorColor: Colors.black12,
      decoration: InputDecoration(
        hintText: hintName,
        hintStyle: const TextStyle(
          color: Colors.black38,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        fillColor: const Color.fromRGBO(238, 238, 238, 1),
        filled: true,
        focusColor: const Color.fromRGBO(238, 238, 238, 1),
        hoverColor: const Color.fromRGBO(238, 238, 238, 1),
        contentPadding: const EdgeInsets.all(15),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
