import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DisplayBalance extends StatelessWidget {
  DisplayBalance({super.key, required this.balance});
  double balance;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Bank balance",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '\$ ${NumberFormat.simpleCurrency(name: ' ').format(balance)}',
          style: const TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
