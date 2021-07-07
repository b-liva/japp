import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart' as intl;

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  var f = intl.NumberFormat("#,###");
  var fd = intl.NumberFormat("#.#");

  String usersList = """
  query FetchSaleExps(\$isSales:Boolean, \$isCustomer:Boolean){
  allUsers(salesExp:\$isSales, isCustomer:\$isCustomer) {
    edges {
      node {
        id
        lastName
        salesExp
        isActive
        username
        orderNotEnteredCount
        percentEntered
      }
    }
  }
}
""";

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text('کارشناسان'),
          ),
          body: Query(
              options: QueryOptions(document: gql(usersList), variables: {
                'isSales': true,
              }
//              pollInterval: Duration(seconds: 180),
                  ),
              builder: (
                QueryResult result, {
                Refetch? refetch,
                FetchMore? fetchMore,
              }) {

                if (result.isLoading) {
                  return Center(child: CircularProgressIndicator());
                }

                var users = result.data!['allUsers']['edges'] ?? [];
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: DataTable(
                      columns: [
                        DataColumn(label: Text('کارشناس')),
                        DataColumn(label: Text('ثبت نشده')),
                        DataColumn(label: Text('%ثبت شده کل')),
                      ],
                      rows: List.generate(
                          users.length,
                          (index) => DataRow(cells: [
                                DataCell(Text(users[index]['node']['lastName'])),
                                DataCell(Text(users[index]['node']
                                        ['orderNotEnteredCount']
                                    .toString())),
                                DataCell(Text(fd
                                    .format(
                                        users[index]['node']['percentEntered'])
                                    .toString())),
                              ]))),
                );
              })),
    );
  }
}
