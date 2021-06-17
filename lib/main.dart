import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
        home: Home(),
    ));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JCM '),
//      backgroundColor: Colors.blueAccent[200],
      ),
      body: Center(
          child: Text(
            'میزان فروش ماه ',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'B-nazanin'
            ),
          )
      ),
    );
  }
}

