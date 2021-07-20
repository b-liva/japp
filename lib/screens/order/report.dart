import 'package:flutter/material.dart';

class OrderReport extends StatelessWidget {
  static const routeName = '/order_report';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('گزارش درخواست'),
        ),
        body: Center(child: Text('گزارش درخواست')),
      ),
    );
  }
}
