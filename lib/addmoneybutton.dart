import 'package:flutter/material.dart';

class AddMoneyButton extends StatelessWidget {
  AddMoneyButton({super.key, required this.addMoney});

  void Function() addMoney;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[700],
          minimumSize: const Size(double.infinity, 0)),
      onPressed: addMoney,
      child: const Text('Add Money'),
    );
  }
}
