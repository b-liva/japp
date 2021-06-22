import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jcm/screens/dashboard.dart';
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
  query allUsers{
  allUsers(salesExp:true, isActive:true) {
    edges {
      node {
        id
        username
        lastName
        lastLogin
        orderNotEnteredCount
        orderEnteredCount
        percentEntered
      }
    }
  }
}
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        body: Query(
            options: QueryOptions(
              document: gql(usersList),
//              pollInterval: Duration(seconds: 180),
            ),
            builder: (
              QueryResult result, {
              Refetch? refetch,
              FetchMore? fetchMore,
            }) {
              var users = result.data!['allUsers']['edges'] ?? [];
              return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: Card(
                        child: ListTile(
                          onTap: () {},
                          title: Text(users[index]['node']['lastName']),
                        ),
                      ),
                    );
                  });
            }));
  }
}
