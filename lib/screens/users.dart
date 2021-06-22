import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
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
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(users[index]['node']['lastName']),
                              Text(users[index]['node']['orderNotEnteredCount']
                                  .toString()),
                              Text(users[index]['node']['percentEntered']
                                  .toString()),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }));
  }
}
