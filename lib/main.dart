import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jcm/screens/customers.dart';
import 'package:jcm/screens/dash.dart';
import 'package:jcm/screens/sales.dart';
import 'package:jcm/screens/stats.dart';
import 'package:jcm/screens/home.dart';
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
    child: MaterialApp(
      title: "Jcm Demo",
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/users': (context) => Users(),
        '/stats': (context) => Stats(),
        '/sales': (context) => Sales(),
        '/dash': (context) => Dash(),
        '/customer': (context) => CustomerSales(),
      },
    ),
  ));
}