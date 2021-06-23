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
    return Scaffold(
      appBar: AppBar(title: Text('Stats')),
      body: Query(
        options: QueryOptions(
            document: gql(stats),
            variables: {'days': days}),
        builder: (
          QueryResult result, {
          Refetch? refetch,
          FetchMore? fetchMore,
        }) {
          var stats = result.data!['dashboardStatistics'];
          print(stats);
          if (result.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          return Column(children: [
            TextField(
                controller: daysController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.right),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              textDirection: TextDirection.rtl,
              children: [
                Text(stats['routine']['title']),
                Text(stats['routine']['count'].toString()),
                Text(stats['routine']['kw'].toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              textDirection: TextDirection.rtl,
              children: [
                Text(stats['project']['title']),
                Text(stats['project']['count'].toString()),
                Text(stats['project']['kw'].toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              textDirection: TextDirection.rtl,
              children: [
                Text(stats['services']['title']),
                Text(stats['services']['count'].toString()),
                Text(stats['services']['kw'].toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              textDirection: TextDirection.rtl,
              children: [
                Text(stats['ex']['title']),
                Text(stats['ex']['count'].toString()),
                Text(stats['ex']['kw'].toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              textDirection: TextDirection.rtl,
              children: [
                Text(stats['total']['title']),
                Text(stats['total']['count'].toString()),
                Text(stats['total']['kw'].toString()),
              ],
            ),
            TextButton(
              onPressed: () {
                setState((){
                  days = daysController.text;
                });
                refetch!();
              },
              child: Text('update'),
            )
          ]);
        },
      ),
    );
  }
}
