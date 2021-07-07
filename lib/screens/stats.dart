import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart' as intl;

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  TextEditingController daysController = new TextEditingController();
  var f = intl.NumberFormat("#,###");

  List projectTypes = [
    'routine',
    'project',
    'services',
    'ex',
    'total',
  ];
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
                    rows: projectTypes.map((index) {
                      return DataRow(cells: [
                        DataCell(Text(stats[index]['title'])),
                        DataCell(Text(f.format(stats[index]['count']))),
                        DataCell(Text(f.format(stats[index]['kw']))),
                      ]);
                    }).toList(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
