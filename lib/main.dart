import 'package:flutter/material.dart';
import 'project_stats.dart';

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

  Widget projectTypeTemplate(pr){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              textDirection: TextDirection.rtl,
              children: [
                Text('${pr.title}'),
                Text('${pr.mw} MW'),
                Text('${pr.sales}'),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<ProjectTypeStats> prTypeData = [
    ProjectTypeStats(title: 'پروژه', mw: 8, sales: 12000),
    ProjectTypeStats(title: 'روتین', mw: 6, sales: 8000),
    ProjectTypeStats(title: 'تعمیرات', mw: 2, sales: 12000),
  ];

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
            children: prTypeData.map((d) => projectTypeTemplate(d)).toList(),
          )
        ],
      )
    );
  }
}

