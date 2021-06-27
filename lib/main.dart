import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:japp/screens/customers.dart';
import 'package:japp/screens/dash.dart';
import 'package:japp/screens/sales.dart';
import 'package:japp/screens/stats.dart';
import 'package:japp/screens/home.dart';
import 'package:japp/screens/users.dart';

void main() {
  final HttpLink httpLink = HttpLink(
//    'http://10.0.2.2/graphql/',
    'http://crm.jemcomotor.ir/graphql/',
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
      home: Directionality(textDirection: TextDirection.rtl, child: Home()),
      title: "Jcm Demo",
      initialRoute: '/',
      routes: {
//        '/': (context) => Home(),
        '/users': (context) => Users(),
        '/stats': (context) => Stats(),
        '/sales': (context) => Sales(),
        '/dash': (context) => Dash(),
        '/customer': (context) => CustomerSales(),
      },
    ),
  ));
}
