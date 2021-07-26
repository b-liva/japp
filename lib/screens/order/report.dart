import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:japp/main.dart';

class OrderReport extends StatefulWidget {
  static const routeName = '/order_report';

  @override
  _OrderReportState createState() => _OrderReportState();
}

class _OrderReportState extends State<OrderReport> {
  TextEditingController customerController = new TextEditingController();
  String customerName = "Test";

  String oq = """
  query filterOrders(\$customer_name:String){
  orderReport(customer: \$customer_name) {
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
              options: QueryOptions(
                  document: gql(oq),
                variables: {"customer_name": customerName}
              ),
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
                      TextField(
                        controller: customerController,
                        keyboardType: TextInputType.number,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            customerName = customerController.text;
                          });
                          refetch!();
                        },
                        child: Text('get'),
                      ),

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
