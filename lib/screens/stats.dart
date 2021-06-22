import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Stats extends StatelessWidget {
  String stats = """
  query{
  dashboardStatistics{
    total(days:30) {
      title
      kw
      count
    }
    routine(days:30) {
      title
      kw
      count
    }
    project(days:30) {
      title
      kw
      count
    }
    services {
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
        options: QueryOptions(document: gql(stats)),
        builder: (QueryResult result, {
          Refetch? refetch,
          FetchMore? fetchMore,
        }) {
          var stats = result.data!['dashboardStatistics'];
          print(stats);
          return Column(
              children: [
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
              ]
          );
        },
      ),
    );
  }
}
