import 'package:billonare/addmoneybutton.dart';
import 'package:billonare/diaplayamount.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UpdateAmount extends StatefulWidget {
  const UpdateAmount({super.key});
  @override
  State<UpdateAmount> createState() => _UpdateAmountState();
}

class _UpdateAmountState extends State<UpdateAmount> {
  double amount = 0;
  void setAmount() async {
    setState(() {
      amount += 500;
    });
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('amount', amount);
  }

  @override
  void initState() {
    loadAmount();
    super.initState();
  }

  void loadAmount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      amount = prefs.getDouble('amount') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey.shade700),
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 9,
            child: DisplayBalance(balance: amount),
          ),
          Expanded(
            flex: 1,
            child: AddMoneyButton(addMoney: setAmount),
          )
        ],
      ),
    );
  }
}
