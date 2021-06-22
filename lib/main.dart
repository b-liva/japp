import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jcm/screens/dashboard.dart';
import 'package:jcm/screens/users.dart';
import 'project_stats.dart';

void main() async {
  final HttpLink httpLink = HttpLink(
    'http://10.0.2.2/graphql/',
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(),
      link: httpLink,
    ),
  );

  runApp(GraphQLProvider(
    client: client,
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes = <String, WidgetBuilder>{
      '/users': (BuildContext context) => Users()
    };

    return MaterialApp(
      title: 'JCM GraphQL Demo',
//      theme: ThemeData(primaryColor: Colors.black),
      routes: routes,
      home: Users(),
    );
  }
}
