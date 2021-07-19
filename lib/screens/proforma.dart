import 'package:flutter/material.dart';

class Proforma extends StatelessWidget {
  static const routeName = '/proforma';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('proforma'),
        ),
        body: Text(args.toString()),
      ),
    );
  }
}
