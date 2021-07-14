import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  TextEditingController numberController = new TextEditingController();
  String number = '';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Order'),
        ),
        body: Column(
          children: [
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  number = numberController.text;
                });
              },
              child: Text('get'),
            ),
            Text('Order nmber: $number'),
          ],
        ),
      ),
    );
  }
}
