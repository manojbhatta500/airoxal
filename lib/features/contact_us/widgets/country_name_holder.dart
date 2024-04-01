import 'package:flutter/material.dart';

class ContryNameHolder extends StatefulWidget {
  const ContryNameHolder({
    super.key,
  });

  @override
  State<ContryNameHolder> createState() => _ContryNameHolderState();
}

class _ContryNameHolderState extends State<ContryNameHolder> {
  bool isPressed = false;
  bool showDecoration = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });

        setState(() {
          showDecoration = !showDecoration;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: showDecoration
            ? BoxDecoration(
                color: const Color(0xFFF4F5F6),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFD8DADC),
                ),
              )
            : null,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.flag,
              size: 27,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Nepal",
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Icon(isPressed ? Icons.check_box : null),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
