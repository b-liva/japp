import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:japp/main.dart';
import 'package:japp/screens/order.dart';

class OrderReport extends StatefulWidget {
  static const routeName = '/order_report';

  @override
  _OrderReportState createState() => _OrderReportState();
}

class _OrderReportState extends State<OrderReport> {
  TextEditingController customerController = new TextEditingController();
  TextEditingController numberController = new TextEditingController();

  String? customerName;

  int? number;

  String oq = """
  query filterOrders(\$customer_name:String, \$number:Int){
  orderReport(
    first:50,
    customer: \$customer_name,
    number_Contains:\$number
  ) {
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
            title: Text('گزاش درخواست'),
          ),
          body: Query(
              options: QueryOptions(
                  document: gql(oq),
                  variables: {"customer_name": customerName, "number": number}),
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
                        decoration: InputDecoration(
                          hintText: "مشتری",
                        ),
                        controller: customerController,
                        keyboardType: TextInputType.text,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "شماره"
                        ),
                        controller: numberController,
                        keyboardType: TextInputType.number,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            customerName = customerController.text.toString();
                            if (numberController.text != "") {
                              number = int.parse(numberController.text);
                            }
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
                                    DataCell(TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, Order.routeName,
                                              arguments: OrderArgs(
                                                  orders[index]['node']['id'],
                                                  number: orders[index]['node']
                                                      ['number']));
                                        },
                                        child: Text(orders[index]['node']
                                                ['number']
                                            .toString()))),
                                    DataCell(Text(orders[index]['node']
                                        ['customer']['name'])),
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
