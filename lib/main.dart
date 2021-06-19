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
      body: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text('ماه جاری'),
              SizedBox(height: 10),
              Text('12 MW'),
              SizedBox(height: 10),
              Text('120000 میلیون ریال'),
            ],
          ),
          Column(
            children: [
              Text('سال مالی'),
              SizedBox(height: 10),
              Text('85 MW'),
              SizedBox(height: 10),
              Text('600000 میلیون ریال'),
            ],
          ),
        ],
      )
    );
  }
}

