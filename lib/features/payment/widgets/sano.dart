import 'package:flutter/material.dart';

class Sano extends StatefulWidget {
  Sano(
      {super.key,
      required this.data,
      required this.days,
      required this.price,
      this.indicator = false,
      required this.onTap});

  final String data;
  final String days;
  final String price;

  bool indicator;
  final VoidCallback onTap;

  @override
  State<Sano> createState() => _SanoState();
}

class _SanoState extends State<Sano> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 100,
        width: 70,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: widget.indicator
                ? Colors.amber
                : const Color.fromRGBO(217, 217, 217, 0.25),
            borderRadius: BorderRadius.circular(10),
            border:
                Border.all(color: const Color.fromRGBO(217, 217, 217, 0.75))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 49,
              decoration: BoxDecoration(
                  color: widget.indicator
                      ? Colors.amber
                      : const Color.fromRGBO(217, 217, 217, 0.75),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromRGBO(217, 217, 217, 0.75))),
              child: Center(
                child: Text(
                  '${widget.data} Gb',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: widget.indicator ? Colors.white : Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 49,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '${widget.days} days',
                      style: TextStyle(
                          color:
                              widget.indicator ? Colors.white : Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Center(
                    child: Text(
                      '${widget.price} €',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: widget.indicator ? Colors.white : Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
