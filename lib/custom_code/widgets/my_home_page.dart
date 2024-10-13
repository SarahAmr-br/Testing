// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// import '/actions/actions.dart' as action_blocks;

import 'package:flutter_paymob/flutter_paymob.dart';

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key,
      required this.title,
      required this.height,
      required this.width});

  final String title;
  final height;
  final width;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('paymob'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  FlutterPaymob.instance.payWithCard(
                    context: context,
                    currency: "EGP",
                    amount: 100,
                    onPayment: (response) {
                      response.success == true
                          ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(response.message ?? "Successes")))
                          : null;
                    },
                  );
                },
                child: const Text("Pay with card")),
            ElevatedButton(
                onPressed: () {
                  FlutterPaymob.instance.payWithWallet(
                    context: context,
                    currency: "EGP",
                    amount: 100,
                    number: "01010101010",
                    onPayment: (response) {
                      response.success == true
                          ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(response.message ?? "Successes")))
                          : null;
                    },
                  );
                },
                child: const Text("Pay With Wallet")),
          ],
        ),
      ),
    );
  }
}
