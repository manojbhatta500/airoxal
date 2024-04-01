import 'package:airoxal/features/purchase_history/widgets/balance_container.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BalanceContainer(),
            SizedBox(
              height: 10,
            ),
            BalanceContainer(),
            SizedBox(
              height: 10,
            ),
            BalanceContainer(),
            SizedBox(
              height: 10,
            ),
            BalanceContainer(),
            SizedBox(
              height: 10,
            ),
            BalanceContainer(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
