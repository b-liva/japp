import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class PaymentArgs {
  final String id;
  final double amount;

  PaymentArgs(this.id, this.amount);
}

class Payment extends StatelessWidget {
  static const routeName = '/payment';
  var f = intl.NumberFormat("#,###");
  var fd = intl.NumberFormat("#.#");

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PaymentArgs;

    return Scaffold(
      appBar: AppBar(
        title: Text('payment'),
      ),
      body: Column(
    children: [
      Text(f.format(args.amount))
    ],
    ),
    );
  }
}
