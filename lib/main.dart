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

const VIRTUAL_SERVER = 'http://10.0.2.2/gqlqrs/';
const CHROME_SERVER = 'http://localhost/gqlqrs/';
const SERVER = 'http://192.168.43.57/gqlqrs/';
const DEVICE_SERVER = 'http://192.168.1.44/gqlqrs/';

void main() {
  final HttpLink httpLink = HttpLink(
    CHROME_SERVER,
  );

  final authLink = AuthLink(
    getToken: () async => "JWT eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6ImplbWNvMyIsImV4cCI6MTYyNjUxMDQ0Miwib3JpZ0lhdCI6MTYyNjUxMDE0Mn0.7xI59Nz-EB6yPQWOZAF7vfqKzXX9Kqod7fI2RroThhE",
  );

  var link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(),
      link: link,
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
