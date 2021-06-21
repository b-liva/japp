import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jcm/screens/dashboard.dart';
import 'project_stats.dart';

void main() async {
  final HttpLink httpLink = HttpLink(
    'http://localhost/graphql',
  );

  final AuthLink authLink = AuthLink(
//    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    // OR
    getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );

  final Link link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(),
      // The default store is the InMemoryStore, which does NOT persist to disk
//      store: GraphQLCache(store: HiveStore()),
    ),
  );

  runApp(GraphQLProvider(
    client: client,
    child: MaterialApp(
      title: "Jcm Demo",
      home: Home(),
//      home: Dashboard(),
    ),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String usersList = """
  query{
  allUsers {
    edges {
      node {
        id
        username
      }
    }
  }
}
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('hi'),
        ),
        body: Query(
            options: QueryOptions(
              document: gql(usersList),
              pollInterval: Duration(seconds: 60),
            ),
            builder: (
              QueryResult result, {
              Refetch? refetch,
              FetchMore? fetchMore,
            }) {
              return Text('hi');
            }));
  }
}
