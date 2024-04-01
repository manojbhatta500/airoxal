import 'package:flutter/material.dart';

import '../widgets/country_name_holder.dart';
import '../widgets/search_text_field.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose the language",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Don't worry! it happens. Please enter the email associated with your account.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black38,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SearchTextField(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                //color: Colors.red,
                
                  child: ListView.builder(
                    padding: const EdgeInsets.all(0),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return const ContryNameHolder();
                    },
                  ),
                
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(MediaQuery.of(context).size.width, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 0.08,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
