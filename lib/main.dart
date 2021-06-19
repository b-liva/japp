import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
        home: Home(),
    ));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int monthMw=12;
  int yearMw=95;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JCM '),
//      backgroundColor: Colors.blueAccent[200],
      ),
      body: Column(
        children: [
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('ماه جاری'),
                  SizedBox(height: 10),
                  Text('$monthMw MW'),
                  SizedBox(height: 10),
                  Text('120000 میلیون ریال'),
                ],
              ),
              Column(
                children: [
                  Text('سال مالی'),
                  SizedBox(height: 10),
                  Text('$yearMw MW'),
                  SizedBox(height: 10),
                  Text('600000 میلیون ریال'),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('پروژه'),
                  Text('6MW'),
                  Text('65000'),
                ],
              ),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('روتین'),
                  Text('6MW'),
                  Text('65000'),
                ],
              ),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('تعمیرات'),
                  Text('6MW'),
                  Text('65000'),
                ],
              ),
            ],
          )
        ],
      )
    );
  }
}

