import 'package:billonare/update_amount.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void aFunction() {
    print("Button clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Billionaire App !"),
        centerTitle: true,
      ),
      body: const UpdateAmount(),
    );
  }
}
