import 'package:flutter/material.dart';

class Proforma extends StatelessWidget {
  static const routeName = '/proforma';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('proforma'),
      ),
      body: Text(args.toString()),
    );
  }
}
