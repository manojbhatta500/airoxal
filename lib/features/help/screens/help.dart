import 'package:airoxal/utils/constants.dart';
import 'package:airoxal/features/help/widgets/lower.dart';
import 'package:airoxal/features/help/widgets/upper.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'How we can help you?',
                style: black20,
              ),
            ),
            const upper(),
            const SizedBox(
              height: 20,
            ),
            const lower()
          ],
        ),
      ),
    ));
  }
}
