import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:japp/main.dart';

class OrderReport extends StatelessWidget {
  static const routeName = '/order_report';
  String oq = """
  {
  orderReport(customer:"تهران") {
    edges {
      node {
        id
        number
        customer {
          id
          name
        }
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
            title: Text('orders'),
          ),
          body: Query(
              options: QueryOptions(document: gql(oq)),
              builder: (
                QueryResult result, {
                Refetch? refetch,
                FetchMore? fetchMore,
              }) {
                if (result.isLoading) {
                  return Center(child: CircularProgressIndicator());
                }

                var orders = result.data!['orderReport']['edges'] ?? [];
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('شماره')),
                            DataColumn(label: Text('مشتری')),
                          ],
                          rows: List.generate(
                              orders.length,
                              (index) => DataRow(cells: [
                                    DataCell(Text(
                                        orders[index]['node']['number'].toString())),
                                    DataCell(Text(orders[index]['node']['customer']
                                            ['name'])),
                                  ])),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
