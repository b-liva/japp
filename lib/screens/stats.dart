import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/services.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  TextEditingController daysController = new TextEditingController();
  var days = "30";
  String stats = """
  query dashboardStatistics(\$days:Int){
  dashboardStatistics{
    total(days:\$days) {
      title
      kw
      count
    }
    routine(days:\$days) {
      title
      kw
      count
    }
    project(days:\$days) {
      title
      kw
      count
    }
    services(days:\$days) {
      title
      kw
      count
    }
    ex(days:\$days) {
      title
      kw
      count
    }
  }
}
  """;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text('Stats')),
        body: Query(
          options:
              QueryOptions(document: gql(stats), variables: {'days': days}),
          builder: (
            QueryResult result, {
            Refetch? refetch,
            FetchMore? fetchMore,
          }) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            var stats = result.data!['dashboardStatistics'];
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                      decoration: InputDecoration(labelText: "روز"),
                      controller: daysController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        days = daysController.text;
                      });
                      refetch!();
                    },
                    child: Text('update'),
                  ),
                  Text('در خواست های ورودی برای $days روز اخیر'),
                  DataTable(
                    columns: [
                      DataColumn(label: Text('نوع فروش')),
                      DataColumn(label: Text('تعداد')),
                      DataColumn(label: Text('کیلووات')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text(stats['routine']['title'])),
                        DataCell(Text(stats['routine']['count'].toString())),
                        DataCell(Text(stats['routine']['kw'].toString())),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(stats['project']['title'])),
                        DataCell(Text(stats['project']['count'].toString())),
                        DataCell(Text(stats['project']['kw'].toString())),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(stats['services']['title'])),
                        DataCell(Text(stats['services']['count'].toString())),
                        DataCell(Text(stats['services']['kw'].toString())),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(stats['ex']['title'])),
                        DataCell(Text(stats['ex']['count'].toString())),
                        DataCell(Text(stats['ex']['kw'].toString())),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(stats['total']['title'])),
                        DataCell(Text(stats['total']['count'].toString())),
                        DataCell(Text(stats['total']['kw'].toString())),
                      ]),
                    ],
                  ),
                ],
              ),
            );

//            return Column(children: [
//              TextField(
//                  decoration: InputDecoration(labelText: "روز"),
//                  controller: daysController,
//                  keyboardType: TextInputType.number,
//                  textAlign: TextAlign.right),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                textDirection: TextDirection.rtl,
//                children: [
//                  Text(stats['routine']['title']),
//                  Text(stats['routine']['count'].toString()),
//                  Text(stats['routine']['kw'].toString()),
//                ],
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                textDirection: TextDirection.rtl,
//                children: [
//                  Text(stats['project']['title']),
//                  Text(stats['project']['count'].toString()),
//                  Text(stats['project']['kw'].toString()),
//                ],
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                textDirection: TextDirection.rtl,
//                children: [
//                  Text(stats['services']['title']),
//                  Text(stats['services']['count'].toString()),
//                  Text(stats['services']['kw'].toString()),
//                ],
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                textDirection: TextDirection.rtl,
//                children: [
//                  Text(stats['ex']['title']),
//                  Text(stats['ex']['count'].toString()),
//                  Text(stats['ex']['kw'].toString()),
//                ],
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                textDirection: TextDirection.rtl,
//                children: [
//                  Text(stats['total']['title']),
//                  Text(stats['total']['count'].toString()),
//                  Text(stats['total']['kw'].toString()),
//                ],
//              ),
//              TextButton(
//                onPressed: () {
//                  setState(() {
//                    days = daysController.text;
//                  });
//                  refetch!();
//                },
//                child: Text('update'),
//              )
//            ]);
          },
        ),
      ),
    );
  }
}
