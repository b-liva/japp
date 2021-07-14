import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:japp/screens/customers.dart';
import 'package:japp/screens/dash.dart';
import 'package:japp/screens/order.dart';
import 'package:japp/screens/sales.dart';
import 'package:japp/screens/stats.dart';
import 'package:japp/screens/home.dart';
import 'package:japp/screens/users.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//const SERVER = 'http://10.0.2.2/gqlqrs/';
//const SERVER = 'http://192.168.43.57/gqlqrs/';
const SERVER = 'http://192.168.1.44/gqlqrs/';
//const SERVER = 'http://crm.jemcomotor.ir/gqlqrs/';

void main() {
  final HttpLink httpLink = HttpLink(
    SERVER,
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
      title: "Jcm",
      initialRoute: '/',
      routes: {
//        '/': (context) => Home(),
        '/users': (context) => Users(),
        '/stats': (context) => Stats(),
        '/sales': (context) => Sales(),
        '/dash': (context) => Dash(),
        '/customer': (context) => CustomerSales(),
        '/order': (context) => Order(),
      },
    ),
  ));
}
