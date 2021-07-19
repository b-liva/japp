import 'package:flutter/material.dart';

class ProformaArgs{
  final String id;
  final int number;

  ProformaArgs(this.id, this.number);
}

class Proforma extends StatelessWidget {
  static const routeName = '/proforma';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ProformaArgs;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('proforma'),
        ),
        body: Text(args.number.toString()),
      ),
    );
  }
}
