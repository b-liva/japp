import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('JCM '),
//      backgroundColor: Colors.blueAccent[200],
        ),
        body: Center(
            child: Text(
              'میزان فروش',
              style: TextStyle(
                fontSize: 20
              ),
            )
        ),
      ),
    ));
